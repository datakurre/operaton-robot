*** Settings ***

Library    ProcessEngine

*** Test Cases ***

First Run
    Deploy Resources    ${CURDIR}${/}process.bpmn
    ${instance}=        Start Instance    my-project-process
    Should Have Task    ${instance}       say-hello

Second Run
    ${instance}=        Start Instance    my-project-process
    Should Have Task    ${instance}       say-hello