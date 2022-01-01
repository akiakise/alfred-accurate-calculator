# alfred-accurate-calculator

An accurate calculator for Alfred.

The original calculator in Alfred cannot handle with big numbers(neither standard nor advanced):

![Alfred Calculator with big number](resources/alfred-calculator-with-big-number.png)

As you can see, the result is:

> 1.23456789e18

Which is equals to:

> 1234567890000000000

But the result should be:

> 1234567890123456790

The precision is lost.

## Solution

Python works well in this case:

```bash
$ python3 -c "print(eval('1234567890123456789+1'))"
1234567890123456790
```

Python tries very hard to pretend its integers are mathematical integers and are unbounded.

Which means you donot need to care about precision in calculate in most cases.

I have written a Alfred workflow to simplify the steps.

## Usage

requirements: python 3 which should be bundled with Mac.

Download the workflow file in release page, and double click it, Alfred will automatically complete the installation progress.

## License

[MIT](LICENSE)
