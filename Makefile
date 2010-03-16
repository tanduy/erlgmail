all: compile

compile:
	@erl -make

start:
	@erl -pa ebin -boot start_sasl -config "ebin/sasl.config" -eval "ssl:start(), application:start(erlgmail)"

clean:
	@rm -rf ./ebin/*.beam