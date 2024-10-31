*** Settings ***

Library    ProcessEngine

*** Test Cases ***

First Run
    [Setup]    Setup Process Engine
    [Teardown]    Teardown Process Engine
    Deploy Resources    ${CURDIR}${/}process.bpmn
    ${instance}=    Start Instance    my-project-process
    ${task}=    Should Have Task    ${instance}    say-hello
    Log  ${task}