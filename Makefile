all:
	@erl -make

clean:
	@rm -rf ebin/*.beam

test: all
	@erl -noshell -pa ebin -s decimal test -s decimal_conv test -s decimal_rounding test -s init stop
