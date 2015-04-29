static:UI.Color() {
    extends Object

    UI.Color.IsAvailable() {
        # TODO: @@verify "$@" ## adds a ternary operator

        if [[ "${TERM}" != *"xterm"* ]] || [ -t 1 ]; then
            # Don't use colors on pipes or non-recognized terminals
            return 1
        else
            return 0
        fi
    }

    UI.Color.Print() {
        @mixed colorCode
        @@verify "$@"

        if UI.Color.IsAvailable
        then
            local colorString="\$'\033[${colorCode}m'"
            eval echo "${colorString}"
        else
            echo
        fi
    }

    UI.Color.256text() {
        @mixed colorNumber
        @@verify "$@"

        if UI.Color.IsAvailable
            then
            local colorString="\$'\033[38;5;${colorNumber}m'"
            eval echo "${colorString}"
        else
            echo
        fi
    }

    UI.Color.256background() {
        @mixed colorNumber
        @@verify "$@"

        if UI.Color.IsAvailable
            then
            local colorString="\$'\033[48;5;${colorNumber}m'"
            eval echo "${colorString}"
        else
            echo
        fi
    }

    ImmutableString Default ~~ "$(UI.Color.Print '0')"

    ImmutableString Black ~~ "$(UI.Color.Print '0;30')"
    ImmutableString Red ~~ "$(UI.Color.Print '0;31')"
    ImmutableString Green ~~ "$(UI.Color.Print '0;32')"
    ImmutableString Yellow ~~ "$(UI.Color.Print '0;33')"
    ImmutableString Blue ~~ "$(UI.Color.Print '0;34')"
    ImmutableString Magenta ~~ "$(UI.Color.Print '0;35')"
    ImmutableString Cyan ~~ "$(UI.Color.Print '0;36')"
    ImmutableString LightGray ~~ "$(UI.Color.Print '0;37')"

    ImmutableString DarkGray ~~ "$(UI.Color.Print '0;90')"
    ImmutableString LightRed ~~ "$(UI.Color.Print '0;91')"
    ImmutableString LightGreen ~~ "$(UI.Color.Print '0;92')"
    ImmutableString LightYellow ~~ "$(UI.Color.Print '0;93')"
    ImmutableString LightBlue ~~ "$(UI.Color.Print '0;94')"
    ImmutableString LightMagenta ~~ "$(UI.Color.Print '0;95')"
    ImmutableString LightCyan ~~ "$(UI.Color.Print '0;96')"
    ImmutableString White ~~ "$(UI.Color.Print '0;97')"

    # flags
    ImmutableString Bold ~~ "$(UI.Color.Print '1')"
    ImmutableString Dim ~~ "$(UI.Color.Print '2')"
    ImmutableString Underline ~~ "$(UI.Color.Print '4')"
    ImmutableString Blink ~~ "$(UI.Color.Print '5')"
    ImmutableString Invert ~~ "$(UI.Color.Print '7')"
    ImmutableString Invisible ~~ "$(UI.Color.Print '8')"

    ImmutableString NoBold ~~ "$(UI.Color.Print '21')"
    ImmutableString NoDim ~~ "$(UI.Color.Print '22')"
    ImmutableString NoUnderline ~~ "$(UI.Color.Print '24')"
    ImmutableString NoBlink ~~ "$(UI.Color.Print '25')"
    ImmutableString NoInvert ~~ "$(UI.Color.Print '27')"
    ImmutableString NoInvisible ~~ "$(UI.Color.Print '28')"

} && oo:enableType

static:SANEi.Core() {

    extends Object

    Array modules

    SANEi.Core::__constructor__() {
        echo
        ## 1. show short-help if no arguments:
        ##    short-help is a list of files in root of sanei-core, RST parsed for short description
        ## 2. parse arguments
        ## 3.
    }

    ## commands ##
    # sanei help {COMMAND:sanei-core}
    # parses RST and shows long description

} && oo:enableType

static:Environment() {
    extends Object

    
}

# SANEiCore.LoadSharedConfig
# SANEiCore.LoadPrivateConfig
