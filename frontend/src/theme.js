import { createMuiTheme, CreateMuiTheme } from '@material-ui/core';

const theme = createMuiTheme ({
    palette: {
        primary: {
            main: "#8bc34a",
            dark: "#689f38",
            light: "#dcedc8"
        },
        secondary: {
            main: "#FF5722"
        },
        text: {
            primary: "#212121",
            secondary: "#757575"
        }
    }
})

export default theme;