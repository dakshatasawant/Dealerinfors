<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="campionwebpage.login" EnableEventValidation="false"%>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Rptech - HRFORM</title>
    <base href="./" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" type="image/x-icon" href="assets/images/favicon.png" />
    <%--<link href="css/Style.css" rel="stylesheet" />--%>
    <%--<link href="css/new.css" rel="stylesheet" />--%>
    <%--<link href="css/loginpage.css" rel="stylesheet" />--%>
  <%--  <link href="css/new.css" rel="stylesheet" />--%>
    <link href="css/new.css" rel="stylesheet" />
    <style type="text/css">
        @font-face {
            font-family: 'Material Icons';
            font-style: normal;
            font-weight: 400;
            src: url(https://fonts.gstatic.com/s/materialicons/v118/flUhRq6tzZclQEJ-Vdg-IuiaDsNa.woff) format('woff');
        }

        .material-icons {
            font-family: 'Material Icons';
            font-weight: normal;
            font-style: normal;
            font-size: 24px;
            line-height: 1;
            letter-spacing: normal;
            text-transform: none;
            display: inline-block;
            white-space: nowrap;
            word-wrap: normal;
            direction: ltr;
            font-feature-settings: 'liga';
        }

        @font-face {
            font-family: 'Material Icons';
            font-style: normal;
            font-weight: 400;
            src: url(https://fonts.gstatic.com/s/materialicons/v118/flUhRq6tzZclQEJ-Vdg-IuiaDsNcIhQ8tQ.woff2) format('woff2');
        }

        .material-icons {
            font-family: 'Material Icons';
            font-weight: normal;
            font-style: normal;
            font-size: 24px;
            line-height: 1;
            letter-spacing: normal;
            text-transform: none;
            display: inline-block;
            white-space: nowrap;
            word-wrap: normal;
            direction: ltr;
            -webkit-font-feature-settings: 'liga';
            -webkit-font-smoothing: antialiased;
        }
    </style>
    <style type="text/css">
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 300;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiByp8kv8JHgFVrLDz8Z1xlEw.woff) format('woff');
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 400;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiEyp8kv8JHgFVrJJfedA.woff) format('woff');
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 500;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiByp8kv8JHgFVrLGT9Z1xlEw.woff) format('woff');
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 600;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiByp8kv8JHgFVrLEj6Z1xlEw.woff) format('woff');
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 700;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiByp8kv8JHgFVrLCz7Z1xlEw.woff) format('woff');
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 300;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiByp8kv8JHgFVrLDz8Z11lFd2JQEl8qw.woff2) format('woff2');
            unicode-range: U+0900-097F, U+1CD0-1CF6, U+1CF8-1CF9, U+200C-200D, U+20A8, U+20B9, U+25CC, U+A830-A839, U+A8E0-A8FB;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 300;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiByp8kv8JHgFVrLDz8Z1JlFd2JQEl8qw.woff2) format('woff2');
            unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 300;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiByp8kv8JHgFVrLDz8Z1xlFd2JQEk.woff2) format('woff2');
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 400;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiEyp8kv8JHgFVrJJbecnFHGPezSQ.woff2) format('woff2');
            unicode-range: U+0900-097F, U+1CD0-1CF6, U+1CF8-1CF9, U+200C-200D, U+20A8, U+20B9, U+25CC, U+A830-A839, U+A8E0-A8FB;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 400;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiEyp8kv8JHgFVrJJnecnFHGPezSQ.woff2) format('woff2');
            unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 400;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiEyp8kv8JHgFVrJJfecnFHGPc.woff2) format('woff2');
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 500;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiByp8kv8JHgFVrLGT9Z11lFd2JQEl8qw.woff2) format('woff2');
            unicode-range: U+0900-097F, U+1CD0-1CF6, U+1CF8-1CF9, U+200C-200D, U+20A8, U+20B9, U+25CC, U+A830-A839, U+A8E0-A8FB;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 500;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiByp8kv8JHgFVrLGT9Z1JlFd2JQEl8qw.woff2) format('woff2');
            unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 500;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiByp8kv8JHgFVrLGT9Z1xlFd2JQEk.woff2) format('woff2');
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 600;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiByp8kv8JHgFVrLEj6Z11lFd2JQEl8qw.woff2) format('woff2');
            unicode-range: U+0900-097F, U+1CD0-1CF6, U+1CF8-1CF9, U+200C-200D, U+20A8, U+20B9, U+25CC, U+A830-A839, U+A8E0-A8FB;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 600;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiByp8kv8JHgFVrLEj6Z1JlFd2JQEl8qw.woff2) format('woff2');
            unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 600;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiByp8kv8JHgFVrLEj6Z1xlFd2JQEk.woff2) format('woff2');
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 700;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiByp8kv8JHgFVrLCz7Z11lFd2JQEl8qw.woff2) format('woff2');
            unicode-range: U+0900-097F, U+1CD0-1CF6, U+1CF8-1CF9, U+200C-200D, U+20A8, U+20B9, U+25CC, U+A830-A839, U+A8E0-A8FB;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 700;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiByp8kv8JHgFVrLCz7Z1JlFd2JQEl8qw.woff2) format('woff2');
            unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
        }

        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 700;
            font-display: swap;
            src: url(https://fonts.gstatic.com/s/poppins/v15/pxiByp8kv8JHgFVrLCz7Z1xlFd2JQEk.woff2) format('woff2');
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
        }
    </style>
    <%--<link href="css/Style.css" rel="stylesheet" />--%>
    <style>
        .divider[_ngcontent-ohq-c92]:after, .divider[_ngcontent-ohq-c92]:before {
            content: "";
            flex: 1;
            height: 1px;
            background: #eee
        }

        .h-custom[_ngcontent-ohq-c92] {
            height: calc(100% - 67px)
        }

        @media (max-width:450px) {
            .h-custom[_ngcontent-ohq-c92] {
                height: 100%
            }
        }

        .banner[_ngcontent-ohq-c92] img[_ngcontent-ohq-c92] {
            width: 100%;
            height: 470px;
            -o-object-fit: cover;
            object-fit: cover;
            -o-object-position: center;
            object-position: center
        }

        .righ-side-align[_ngcontent-ohq-c92] {
            height: 34.4vh !important;
            justify-content: right !important;
            margin-right: 85px
        }

        .button1[_ngcontent-ohq-c92] {
            width: 47.5%;
            background-color: #fff;
            border-color: #dfdfdf;
            color: #848484;
            margin-right: 4.7%
        }

            .button1[_ngcontent-ohq-c92]:hover {
                background-color: #a82682;
                color: #fff
            }

        .button2[_ngcontent-ohq-c92] {
            width: 47.5%;
            background-color: #fff;
            border-color: #dfdfdf;
            color: #848484
        }

            .button2[_ngcontent-ohq-c92]:hover {
                background-color: #a82682;
                color: #fff
            }

        .mat-form-field[_ngcontent-ohq-c92] .mat-input-element[_ngcontent-ohq-c92] {
            color: #727271 !important
        }

        @media screen and (max-width:1368px) and (min-width:768px) {
            .banner[_ngcontent-ohq-c92] img[_ngcontent-ohq-c92] {
                height: 310px
            }
        }

        @media (max-width:768px) {
            .banner[_ngcontent-ohq-c92] img[_ngcontent-ohq-c92] {
                height: auto
            }

            .righ-side-align[_ngcontent-ohq-c92] {
                margin-right: auto
            }
        }
    </style>
    <style>
        .mat-form-field {
            display: inline-block;
            position: relative;
            text-align: left
        }

        [dir=rtl] .mat-form-field {
            text-align: right
        }

        .mat-form-field-wrapper {
            position: relative
        }

        .mat-form-field-flex {
            display: inline-flex;
            align-items: baseline;
            box-sizing: border-box;
            width: 100%
        }

        .mat-form-field-prefix, .mat-form-field-suffix {
            white-space: nowrap;
            flex: none;
            position: relative
        }

        .mat-form-field-infix {
            display: block;
            position: relative;
            flex: auto;
            min-width: 0;
            width: 180px
        }

        .cdk-high-contrast-active .mat-form-field-infix {
            border-image: linear-gradient(transparent, transparent)
        }

        .mat-form-field-label-wrapper {
            position: absolute;
            left: 0;
            box-sizing: content-box;
            width: 100%;
            height: 100%;
            overflow: hidden;
            pointer-events: none
        }

        [dir=rtl] .mat-form-field-label-wrapper {
            left: auto;
            right: 0
        }

        .mat-form-field-label {
            position: absolute;
            left: 0;
            font: inherit;
            pointer-events: none;
            width: 100%;
            white-space: nowrap;
            text-overflow: ellipsis;
            overflow: hidden;
            transform-origin: 0 0;
            transition: transform 400ms cubic-bezier(0.25, 0.8, 0.25, 1),color 400ms cubic-bezier(0.25, 0.8, 0.25, 1),width 400ms cubic-bezier(0.25, 0.8, 0.25, 1);
            display: none
        }

        [dir=rtl] .mat-form-field-label {
            transform-origin: 100% 0;
            left: auto;
            right: 0
        }

        .mat-form-field-empty.mat-form-field-label, .mat-form-field-can-float.mat-form-field-should-float .mat-form-field-label {
            display: block
        }

        .mat-form-field-autofill-control:-webkit-autofill + .mat-form-field-label-wrapper .mat-form-field-label {
            display: none
        }

        .mat-form-field-can-float .mat-form-field-autofill-control:-webkit-autofill + .mat-form-field-label-wrapper .mat-form-field-label {
            display: block;
            transition: none
        }

        .mat-input-server:focus + .mat-form-field-label-wrapper .mat-form-field-label, .mat-input-server[placeholder]:not(:placeholder-shown) + .mat-form-field-label-wrapper .mat-form-field-label {
            display: none
        }

        .mat-form-field-can-float .mat-input-server:focus + .mat-form-field-label-wrapper .mat-form-field-label, .mat-form-field-can-float .mat-input-server[placeholder]:not(:placeholder-shown) + .mat-form-field-label-wrapper .mat-form-field-label {
            display: block
        }

        .mat-form-field-label:not(.mat-form-field-empty) {
            transition: none
        }

        .mat-form-field-underline {
            position: absolute;
            width: 100%;
            pointer-events: none;
            transform: scale3d(1, 1.0001, 1)
        }

        .mat-form-field-ripple {
            position: absolute;
            left: 0;
            width: 100%;
            transform-origin: 50%;
            transform: scaleX(0.5);
            opacity: 0;
            transition: background-color 300ms cubic-bezier(0.55, 0, 0.55, 0.2)
        }

        .mat-form-field.mat-focused .mat-form-field-ripple, .mat-form-field.mat-form-field-invalid .mat-form-field-ripple {
            opacity: 1;
            transform: scaleX(1);
            transition: transform 300ms cubic-bezier(0.25, 0.8, 0.25, 1),opacity 100ms cubic-bezier(0.25, 0.8, 0.25, 1),background-color 300ms cubic-bezier(0.25, 0.8, 0.25, 1)
        }

        .mat-form-field-subscript-wrapper {
            position: absolute;
            box-sizing: border-box;
            width: 100%;
            overflow: hidden
        }

            .mat-form-field-subscript-wrapper .mat-icon, .mat-form-field-label-wrapper .mat-icon {
                width: 1em;
                height: 1em;
                font-size: inherit;
                vertical-align: baseline
            }

        .mat-form-field-hint-wrapper {
            display: flex
        }

        .mat-form-field-hint-spacer {
            flex: 1 0 1em
        }

        .mat-error {
            display: block
        }

        .mat-form-field-control-wrapper {
            position: relative
        }

        .mat-form-field-hint-end {
            order: 1
        }

        .mat-form-field._mat-animation-noopable .mat-form-field-label, .mat-form-field._mat-animation-noopable .mat-form-field-ripple {
            transition: none
        }
    </style>
    <style>
        .mat-form-field-appearance-fill .mat-form-field-flex {
            border-radius: 4px 4px 0 0;
            padding: .75em .75em 0 .75em
        }

        .cdk-high-contrast-active .mat-form-field-appearance-fill .mat-form-field-flex {
            outline: solid 1px
        }

        .mat-form-field-appearance-fill .mat-form-field-underline::before {
            content: "";
            display: block;
            position: absolute;
            bottom: 0;
            height: 1px;
            width: 100%
        }

        .mat-form-field-appearance-fill .mat-form-field-ripple {
            bottom: 0;
            height: 2px
        }

        .cdk-high-contrast-active .mat-form-field-appearance-fill .mat-form-field-ripple {
            height: 0;
            border-top: solid 2px
        }

        .mat-form-field-appearance-fill:not(.mat-form-field-disabled) .mat-form-field-flex:hover ~ .mat-form-field-underline .mat-form-field-ripple {
            opacity: 1;
            transform: none;
            transition: opacity 600ms cubic-bezier(0.25, 0.8, 0.25, 1)
        }

        .mat-form-field-appearance-fill._mat-animation-noopable:not(.mat-form-field-disabled) .mat-form-field-flex:hover ~ .mat-form-field-underline .mat-form-field-ripple {
            transition: none
        }

        .mat-form-field-appearance-fill .mat-form-field-subscript-wrapper {
            padding: 0 1em
        }
    </style>
    <style>
        .mat-input-element {
            font: inherit;
            background: transparent;
            color: currentColor;
            border: none;
            outline: none;
            padding: 0;
            margin: 0;
            width: 100%;
            max-width: 100%;
            vertical-align: bottom;
            text-align: inherit
        }

            .mat-input-element:-moz-ui-invalid {
                box-shadow: none
            }

            .mat-input-element::-ms-clear, .mat-input-element::-ms-reveal {
                display: none
            }

            .mat-input-element, .mat-input-element::-webkit-search-cancel-button, .mat-input-element::-webkit-search-decoration, .mat-input-element::-webkit-search-results-button, .mat-input-element::-webkit-search-results-decoration {
                -webkit-appearance: none
            }

                .mat-input-element::-webkit-contacts-auto-fill-button, .mat-input-element::-webkit-caps-lock-indicator, .mat-input-element::-webkit-credentials-auto-fill-button {
                    visibility: hidden
                }

                .mat-input-element[type=date], .mat-input-element[type=datetime], .mat-input-element[type=datetime-local], .mat-input-element[type=month], .mat-input-element[type=week], .mat-input-element[type=time] {
                    line-height: 1
                }

                    .mat-input-element[type=date]::after, .mat-input-element[type=datetime]::after, .mat-input-element[type=datetime-local]::after, .mat-input-element[type=month]::after, .mat-input-element[type=week]::after, .mat-input-element[type=time]::after {
                        content: " ";
                        white-space: pre;
                        width: 1px
                    }

                .mat-input-element::-webkit-inner-spin-button, .mat-input-element::-webkit-calendar-picker-indicator, .mat-input-element::-webkit-clear-button {
                    font-size: .75em
                }

                .mat-input-element::placeholder {
                    -webkit-user-select: none;
                    -moz-user-select: none;
                    -ms-user-select: none;
                    user-select: none;
                    transition: color 400ms 133.3333333333ms cubic-bezier(0.25, 0.8, 0.25, 1)
                }

                    .mat-input-element::placeholder:-ms-input-placeholder {
                        -ms-user-select: text
                    }

                .mat-input-element::-moz-placeholder {
                    -webkit-user-select: none;
                    -moz-user-select: none;
                    -ms-user-select: none;
                    user-select: none;
                    transition: color 400ms 133.3333333333ms cubic-bezier(0.25, 0.8, 0.25, 1)
                }

                    .mat-input-element::-moz-placeholder:-ms-input-placeholder {
                        -ms-user-select: text
                    }

                .mat-input-element::-webkit-input-placeholder {
                    -webkit-user-select: none;
                    -moz-user-select: none;
                    -ms-user-select: none;
                    user-select: none;
                    transition: color 400ms 133.3333333333ms cubic-bezier(0.25, 0.8, 0.25, 1)
                }

                    .mat-input-element::-webkit-input-placeholder:-ms-input-placeholder {
                        -ms-user-select: text
                    }

                .mat-input-element:-ms-input-placeholder {
                    -webkit-user-select: none;
                    -moz-user-select: none;
                    -ms-user-select: none;
                    user-select: none;
                    transition: color 400ms 133.3333333333ms cubic-bezier(0.25, 0.8, 0.25, 1)
                }

                    .mat-input-element:-ms-input-placeholder:-ms-input-placeholder {
                        -ms-user-select: text
                    }

        .mat-form-field-hide-placeholder .mat-input-element::placeholder {
            color: transparent !important;
            -webkit-text-fill-color: transparent;
            transition: none
        }

        .mat-form-field-hide-placeholder .mat-input-element::-moz-placeholder {
            color: transparent !important;
            -webkit-text-fill-color: transparent;
            transition: none
        }

        .mat-form-field-hide-placeholder .mat-input-element::-webkit-input-placeholder {
            color: transparent !important;
            -webkit-text-fill-color: transparent;
            transition: none
        }

        .mat-form-field-hide-placeholder .mat-input-element:-ms-input-placeholder {
            color: transparent !important;
            -webkit-text-fill-color: transparent;
            transition: none
        }

        textarea.mat-input-element {
            resize: vertical;
            overflow: auto
        }

            textarea.mat-input-element.cdk-textarea-autosize {
                resize: none
            }

        textarea.mat-input-element {
            padding: 2px 0;
            margin: -2px 0
        }

        select.mat-input-element {
            -moz-appearance: none;
            -webkit-appearance: none;
            position: relative;
            background-color: transparent;
            display: inline-flex;
            box-sizing: border-box;
            padding-top: 1em;
            top: -1em;
            margin-bottom: -1em
        }

            select.mat-input-element::-ms-expand {
                display: none
            }

            select.mat-input-element::-moz-focus-inner {
                border: 0
            }

            select.mat-input-element:not(:disabled) {
                cursor: pointer
            }

            select.mat-input-element::-ms-value {
                color: inherit;
                background: none
            }

        .mat-focused .cdk-high-contrast-active select.mat-input-element::-ms-value {
            color: inherit
        }

        .mat-form-field-type-mat-native-select .mat-form-field-infix::after {
            content: "";
            width: 0;
            height: 0;
            border-left: 5px solid transparent;
            border-right: 5px solid transparent;
            border-top: 5px solid;
            position: absolute;
            top: 50%;
            right: 0;
            margin-top: -2.5px;
            pointer-events: none
        }

        [dir=rtl] .mat-form-field-type-mat-native-select .mat-form-field-infix::after {
            right: auto;
            left: 0
        }

        .mat-form-field-type-mat-native-select .mat-input-element {
            padding-right: 15px
        }

        [dir=rtl] .mat-form-field-type-mat-native-select .mat-input-element {
            padding-right: 0;
            padding-left: 15px
        }

        .mat-form-field-type-mat-native-select .mat-form-field-label-wrapper {
            max-width: calc(100% - 10px)
        }

        .mat-form-field-type-mat-native-select.mat-form-field-appearance-outline .mat-form-field-infix::after {
            margin-top: -5px
        }

        .mat-form-field-type-mat-native-select.mat-form-field-appearance-fill .mat-form-field-infix::after {
            margin-top: -10px
        }
    </style>
    <style>
        .mat-form-field-appearance-legacy .mat-form-field-label {
            transform: perspective(100px);
            -ms-transform: none
        }

        .mat-form-field-appearance-legacy .mat-form-field-prefix .mat-icon, .mat-form-field-appearance-legacy .mat-form-field-suffix .mat-icon {
            width: 1em
        }

        .mat-form-field-appearance-legacy .mat-form-field-prefix .mat-icon-button, .mat-form-field-appearance-legacy .mat-form-field-suffix .mat-icon-button {
            font: inherit;
            vertical-align: baseline
        }

            .mat-form-field-appearance-legacy .mat-form-field-prefix .mat-icon-button .mat-icon, .mat-form-field-appearance-legacy .mat-form-field-suffix .mat-icon-button .mat-icon {
                font-size: inherit
            }

        .mat-form-field-appearance-legacy .mat-form-field-underline {
            height: 1px
        }

        .cdk-high-contrast-active .mat-form-field-appearance-legacy .mat-form-field-underline {
            height: 0;
            border-top: solid 1px
        }

        .mat-form-field-appearance-legacy .mat-form-field-ripple {
            top: 0;
            height: 2px;
            overflow: hidden
        }

        .cdk-high-contrast-active .mat-form-field-appearance-legacy .mat-form-field-ripple {
            height: 0;
            border-top: solid 2px
        }

        .mat-form-field-appearance-legacy.mat-form-field-disabled .mat-form-field-underline {
            background-position: 0;
            background-color: transparent
        }

        .cdk-high-contrast-active .mat-form-field-appearance-legacy.mat-form-field-disabled .mat-form-field-underline {
            border-top-style: dotted;
            border-top-width: 2px
        }

        .mat-form-field-appearance-legacy.mat-form-field-invalid:not(.mat-focused) .mat-form-field-ripple {
            height: 1px
        }
    </style>
    <style>
        .mat-form-field-appearance-outline .mat-form-field-wrapper {
            margin: .25em 0
        }

        .mat-form-field-appearance-outline .mat-form-field-flex {
            padding: 0 .75em 0 .75em;
            margin-top: -0.25em;
            position: relative
        }

        .mat-form-field-appearance-outline .mat-form-field-prefix, .mat-form-field-appearance-outline .mat-form-field-suffix {
            top: .25em
        }

        .mat-form-field-appearance-outline .mat-form-field-outline {
            display: flex;
            position: absolute;
            top: .25em;
            left: 0;
            right: 0;
            bottom: 0;
            pointer-events: none
        }

        .mat-form-field-appearance-outline .mat-form-field-outline-start, .mat-form-field-appearance-outline .mat-form-field-outline-end {
            border: 1px solid currentColor;
            min-width: 5px
        }

        .mat-form-field-appearance-outline .mat-form-field-outline-start {
            border-radius: 5px 0 0 5px;
            border-right-style: none
        }

        [dir=rtl] .mat-form-field-appearance-outline .mat-form-field-outline-start {
            border-right-style: solid;
            border-left-style: none;
            border-radius: 0 5px 5px 0
        }

        .mat-form-field-appearance-outline .mat-form-field-outline-end {
            border-radius: 0 5px 5px 0;
            border-left-style: none;
            flex-grow: 1
        }

        [dir=rtl] .mat-form-field-appearance-outline .mat-form-field-outline-end {
            border-left-style: solid;
            border-right-style: none;
            border-radius: 5px 0 0 5px
        }

        .mat-form-field-appearance-outline .mat-form-field-outline-gap {
            border-radius: .000001px;
            border: 1px solid currentColor;
            border-left-style: none;
            border-right-style: none
        }

        .mat-form-field-appearance-outline.mat-form-field-can-float.mat-form-field-should-float .mat-form-field-outline-gap {
            border-top-color: transparent
        }

        .mat-form-field-appearance-outline .mat-form-field-outline-thick {
            opacity: 0
        }

            .mat-form-field-appearance-outline .mat-form-field-outline-thick .mat-form-field-outline-start, .mat-form-field-appearance-outline .mat-form-field-outline-thick .mat-form-field-outline-end, .mat-form-field-appearance-outline .mat-form-field-outline-thick .mat-form-field-outline-gap {
                border-width: 2px
            }

        .mat-form-field-appearance-outline.mat-focused .mat-form-field-outline, .mat-form-field-appearance-outline.mat-form-field-invalid .mat-form-field-outline {
            opacity: 0;
            transition: opacity 100ms cubic-bezier(0.25, 0.8, 0.25, 1)
        }

        .mat-form-field-appearance-outline.mat-focused .mat-form-field-outline-thick, .mat-form-field-appearance-outline.mat-form-field-invalid .mat-form-field-outline-thick {
            opacity: 1
        }

        .mat-form-field-appearance-outline:not(.mat-form-field-disabled) .mat-form-field-flex:hover .mat-form-field-outline {
            opacity: 0;
            transition: opacity 600ms cubic-bezier(0.25, 0.8, 0.25, 1)
        }

        .mat-form-field-appearance-outline:not(.mat-form-field-disabled) .mat-form-field-flex:hover .mat-form-field-outline-thick {
            opacity: 1
        }

        .mat-form-field-appearance-outline .mat-form-field-subscript-wrapper {
            padding: 0 1em
        }

        .mat-form-field-appearance-outline._mat-animation-noopable:not(.mat-form-field-disabled) .mat-form-field-flex:hover ~ .mat-form-field-outline, .mat-form-field-appearance-outline._mat-animation-noopable .mat-form-field-outline, .mat-form-field-appearance-outline._mat-animation-noopable .mat-form-field-outline-start, .mat-form-field-appearance-outline._mat-animation-noopable .mat-form-field-outline-end, .mat-form-field-appearance-outline._mat-animation-noopable .mat-form-field-outline-gap {
            transition: none
        }
    </style>
    <style>
        .mat-form-field-appearance-standard .mat-form-field-flex {
            padding-top: .75em
        }

        .mat-form-field-appearance-standard .mat-form-field-underline {
            height: 1px
        }

        .cdk-high-contrast-active .mat-form-field-appearance-standard .mat-form-field-underline {
            height: 0;
            border-top: solid 1px
        }

        .mat-form-field-appearance-standard .mat-form-field-ripple {
            bottom: 0;
            height: 2px
        }

        .cdk-high-contrast-active .mat-form-field-appearance-standard .mat-form-field-ripple {
            height: 0;
            border-top: 2px
        }

        .mat-form-field-appearance-standard.mat-form-field-disabled .mat-form-field-underline {
            background-position: 0;
            background-color: transparent
        }

        .cdk-high-contrast-active .mat-form-field-appearance-standard.mat-form-field-disabled .mat-form-field-underline {
            border-top-style: dotted;
            border-top-width: 2px
        }

        .mat-form-field-appearance-standard:not(.mat-form-field-disabled) .mat-form-field-flex:hover ~ .mat-form-field-underline .mat-form-field-ripple {
            opacity: 1;
            transform: none;
            transition: opacity 600ms cubic-bezier(0.25, 0.8, 0.25, 1)
        }

        .mat-form-field-appearance-standard._mat-animation-noopable:not(.mat-form-field-disabled) .mat-form-field-flex:hover ~ .mat-form-field-underline .mat-form-field-ripple {
            transition: none
        }

        .righ-side-align[_ngcontent-aji-c92] {
            height: 34.4vh !important;
            justify-content: right !important;
            margin-right: 85px;
        }

        .button1[_ngcontent-aji-c92] {
            width: 47.5%;
            background-color: #fff;
            border-color: #dfdfdf;
            color: #848484;
            margin-right: 4.7%;
        }

            .button1[_ngcontent-aji-c92]:hover {
                background-color: #a82682;
                color: #fff;
            }

        .button2[_ngcontent-aji-c92] {
            width: 47.5%;
            background-color: #fff;
            border-color: #dfdfdf;
            color: #848484;
        }

            .button2[_ngcontent-aji-c92]:hover {
                background-color: #a82682;
                color: #fff;
            }

        .mat-form-field-appearance-outline .mat-form-field-outline-thick {
            opacity: 0;
        }

        .mat-form-field-appearance-outline .mat-form-field-outline {
            display: flex;
            position: absolute;
            top: .25em;
            left: 0;
            right: 0;
            bottom: 0;
            pointer-events: none;
        }
    </style>
    <script src="javascript/main-es2015.f80b9d60c61d2ee20013.js" type="text/javascript"></script>
    <script src="javascript/polyfills-es2015.061d306ba3ca61321b18.js" type="text/javascript"></script>
    <script src="javascript/runtime-es2015.1e21a0e5e2c825f90fac.js" type="text/javascript"></script>
  
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>

    <%-- <script type="text/javascript">
         function verify() {
             alert("Please Enter Correct OTP");
              return false;    

         }

     </script>--%>
</head>
<body>
    <form id="form1" runat="server">

        <div class="razorpay-container" style="z-index: 2147483647; position: fixed; top: 0px; display: none; left: 0px; height: 100%; width: 100%; backface-visibility: hidden; overflow-y: visible;">
            <style>
                @keyframes rzp-rot {
                    to {
                        transform: rotate(360deg);
                    }
                }

                @-webkit-keyframes rzp-rot {
                    to {
                        -webkit-transform: rotate(360deg);
                    }
                }
            </style>
            <div class="razorpay-backdrop" style="min-height: 100%; transition: all 0.3s ease-out 0s; position: fixed; top: 0px; left: 0px; width: 100%; height: 100%;"><span style="text-decoration: none; background: rgb(214, 68, 68); border: 1px dashed white; padding: 3px; opacity: 0; transform: rotate(45deg); transition: opacity 0.3s ease-in 0s; font-family: lato, ubuntu, helvetica, sans-serif; color: white; position: absolute; width: 200px; text-align: center; right: -50px; top: 50px;">Test Mode</span></div>
            <iframe style="opacity: 1; height: 100%; position: relative; background: none; display: block; border: 0 none transparent; margin: 0px; padding: 0px; z-index: 2;" allowtransparency="true" frameborder="0" width="100%" height="100%" allowpaymentrequest="true" src="https://api.razorpay.com/v1/checkout/public?traffic_env=production&amp;build=e9410aed315bd57973e42dad5bf2a6a4fb949101" class="razorpay-checkout-frame"></iframe>
        </div>
        <app-root _nghost-acp-c93="" ng-version="11.0.2">
            <router-outlet _ngcontent-acp-c93="">
                <app-spinner _ngcontent-acp-c93="">
                    <!---->
                </app-spinner>
            </router-outlet>
            <app-login class="ng-star-inserted">
                <section>
                    <div _ngcontent-ohq-c92="" class="left" style="background: #A82682; height: 55px;">
                        <img _ngcontent-ohq-c92="" src="images/RPTECH.png" alt="" style="width: 126px; margin-top: 7px; margin-left: 15px;" />
                    </div>
                    <div _ngcontent-ohq-c92="" class="banner">
                        <img _ngcontent-ohq-c92="" src="images/MIS.jpg" width="450" height="300" />
                    </div>
                    <div _ngcontent-aji-c92="" class="container-fluid h-custom">
                        <div _ngcontent-aji-c92="" class="row d-flex justify-content-center align-items-center righ-side-align">
                            <div _ngcontent-aji-c92="" class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                                <div _ngcontent-aji-c92="" class="ng-valid ng-touched ng-dirty">
                                    <mat-card-content _ngcontent-aji-c92="" class="mat-card-content">
                                        <div _ngcontent-aji-c92="" class="row">
                                          <mat-form-field _ngcontent-aji-c92="" appearance="outline" class="mat-form-field ng-tns-c66-0 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-outline mat-form-field-can-float mat-form-field-has-label ng-valid ng-touched">
                                                <div class="mat-form-field-wrapper ng-tns-c66-0">
                                                  <div class="mat-form-field-flex ng-tns-c66-0">
                                                        <div class="mat-form-field-outline ng-tns-c66-0 ng-star-inserted">
                                                            <div class="mat-form-field-outline-start ng-tns-c66-0" style="width: 5.5px;"></div>
                                                            <div class="mat-form-field-outline-gap ng-tns-c66-0" style="width: 61px;"></div>
                                                            <div class="mat-form-field-outline-end ng-tns-c66-0"></div>
                                                        </div>
                                                        <div class="mat-form-field-outline mat-form-fieldx-outline-thick ng-tns-c66-0 ng-star-inserted">
                                                            <div class="mat-form-field-outline-start ng-tns-c66-0" style="width: 5.5px;"></div>
                                                            <div class="mat-form-field-outline-gap ng-tns-c66-0" style="width: 61px;"></div>
                                                            <div class="mat-form-field-outline-end ng-tns-c66-0"></div>
                                                          
                                                        </div>
                                                        <!---->
                                                        <!---->
                                                        <!---->
                                                        <div class="mat-form-field-infix ng-tns-c66-0">
                                                         <%--  <input _ngcontent-aji-c92="" matinput="" formcontrolname="username" autocomplete="off" class="mat-input-element mat-form-field-autofill-control ng-tns-c66-0 ng-valid cdk-text-field-autofill-monitored ng-touched" style="font-size: 18px !important; color: #A82682;" id="mat-input-0" aria-invalid="false" aria-required="false" />--%>
                                                           <asp:TextBox  runat="server" placeholder="Mobile No" maxlength="10"  pattern="\d{10}" title="Please enter exactly 10 digits" CssClass="mat-input-element mat-form-field-autofill-control ng-tns-c66-0" style="font-size: 18px !important; color: #A82682;" id="txtmobile" aria-invalid="false" aria-required="false"></asp:TextBox>
                                                             <asp:TextBox  runat="server" placeholder="OTP No" maxlength="4" pattern="\d{4}" title="Please enter exactly 4 digits"  CssClass="mat-input-element mat-form-field-autofill-control ng-tns-c66-0 " style="font-size: 18px !important; color: #A82682;" id="txtverify" Visible="false" aria-invalid="false" aria-required="false"></asp:TextBox>
                                                           <%-- <span class="mat-form-field-label-wrapper ng-tns-c66-0">--%>
                                                                <%--<label class="mat-form-field-label ng-tns-c66-0 mat-empty mat-form-field-empty ng-star-inserted" id="mat-form-field-label-1" for="mat-input-0" aria-owns="mat-input-0">--%>
                                                               <%-- <mat-label _ngcontent-aji-c92="" style="font-size: large; color: #A82682;" class="ng-tns-c66-0 ng-star-inserted">Email ID</mat-label>--%>
                                                            <%-- </label>--%>
                                                           <%-- <asp:Label runat="server" CssClass="mat-form-field-label ng-tns-c66-0 mat-empty mat-form-field-empty ng-star-inserted" ID="lblmobile" for="mat-input-0" aria-owns="mat-input-0">
                                                              <mat-label _ngcontent-aji-c92="" style="font-size: large; color: #A82682;" class="ng-tns-c66-0 ng-star-inserted">Mobile No</mat-label>
                                                            </asp:Label>--%>
                                                         <%--   </span>--%>
                                                           
                                                        </div>
                                                        <!---->
                                                    </div>
                                                    <!---->
                                                    <div class="mat-form-field-subscript-wrapper ng-tns-c66-0">
                                                        <!---->
                                                        <div class="mat-form-field-hint-wrapper ng-tns-c66-0 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                                            <!---->
                                                            <div class="mat-form-field-hint-spacer ng-tns-c66-0"></div>
                                                        </div>
                                                        <!---->
                                                    </div>
                                                </div>
                                            </mat-form-field>
                                        </div>
                                    </mat-card-content>
                                </div>
                                <div _ngcontent-aji-c92="" class="text-center text-lg-start mt-4 pt-2" style="display: flex; text-align: center !important; margin-top: .5rem !important;">
                                  <%-- <button _ngcontent-aji-c92="" type="submit" class="btn btn-primary btn-lg button1" style="display: block;">Get OTP </button>--%>
                                   <%-- <button _ngcontent-aji-c92="" type="submit" class="btn btn-primary btn-lg button2" style="display: block;">Resend OTP </button>--%>
                                    <%-- <button _ngcontent-aji-c92="" type="submit" class="btn btn-primary btn-lg button2" style="display: none;">Continue User </button>--%>
                                      <asp:Button _ngcontent-aji-c92="" ID="btnget" runat="server" CssClass="btn btn-primary btn-lg button1" Text="Get OTP" style="display: block;" OnClick="btnget_Click"/>
                                       <asp:Button _ngcontent-aji-c92="" ID="btnverify" runat="server" CssClass="btn btn-primary btn-lg button1" Text="Verify OTP" Visible="false" style="display: block;" OnClick="btnverify_Click" OnClientClick="verify()"/>
                                       <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                                      <asp:Button _ngcontent-aji-c92="" ID="btnresend" runat="server" CssClass="btn btn-primary btn-lg button2" Text="Resend OTP" style="display: block;" OnClick="btnresend_Click"/>
                                      <asp:Button _ngcontent-aji-c92="" ID="btnconuser" runat="server" CssClass="btn btn-primary btn-lg button2" Text="Continue User" style="display: none;" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div _ngcontent-aji-c92="" class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5" style="background: #A82682; height: 55px; align-items: center;">
                        <div _ngcontent-aji-c92="" class="text-white mb-3 mb-md-0">Copyright © 2022. All rights reserved. </div>
                    </div>

                </section>

            </app-login>
        </app-root>
        <div class="cdk-live-announcer-element cdk-visually-hidden" aria-atomic="true" aria-live="polite"></div>
    </form>
</body>
</html>

