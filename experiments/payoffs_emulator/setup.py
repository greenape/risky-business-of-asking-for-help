##
## Python script to generate a latin hypercube sample for
## payoffs to be used in training a GEM.
## Outputs a .args file.
##

from pyDOE import *
from disclosuregame.experiments import args_write
import argparse

parser = argparse.ArgumentParser(
    description='Generate a set of .args files containing a latin hypercube sample of points for n payoffs, to be used with the disclosuregame model.')
parser.add_argument('-s', '--samples', type=int,
 help='Number of samples to draw.', default=400,
 dest="samples")
parser.add_argument('-p', '--payoffs', type=str, nargs='*',
 help='Payoffs to sample for.', default=["baby_payoff", "no_baby_payoff", "mid_baby_payoff", "referral_cost", "harsh_high",
 "harsh_mid", "mid_high", "mid_mid", "low_high", "low_mid"],
 dest="payoffs")
parser.add_argument('-m', '--max-value', type=int,
 help='Maximum value for payoffs.', default=100,
 dest="max_value")
parser.add_argument('-f', '--fixed-payoffs', type=str, nargs='*',
 help='Payoffs to hold at a fixed value.', default=["harsh_low", "mid_low", "low_low"],
 dest="fixed_payoffs")
parser.add_argument('-v', '--fixed-payoff-values', type=int, nargs='*',
 help='Fixed value(s) to hold payoffs at, in the same order as the fixed payoffs provided.', default=["harsh_low", "mid_low", "low_low"],
 dest="fixed_values")
parser.add_argument('-c', '--chunksize', type=int, nargs='*',
    help='Optionally break down arguments into multiple files containing this many (for HPC work).', default=16,
 dest="chunksize")

def arguments():
    args, extras = parser.parse_known_args()
    
    assert len(args.fixed_payoffs) == len(args.fixed_values)

    return args

def main():
    args = arguments()
    samples = lhs(len(args.payoffs), samples=args.samples, criterion="maximin")*args.max_value
    kwargs = []
    results = []

    for sample in samples:
        game_args = dict(zip(args.payoffs, sample))
        game_args.update(dict(zip(args.fixed_payoffs, args.fixed_values)))
        kwarg = {'game_args': game_args}
        kwargs.append(kwarg)
        if args.chunksize is not None and len(kwargs) >= args.chunksize:
            results.append(kwargs)
            kwargs = []
    results.append(kwargs)
    args_write(results, "args", "payoff_lhs")

if __name__ == "__main__":
    main()