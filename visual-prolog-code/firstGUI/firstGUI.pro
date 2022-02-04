% Copyright

implement firstGUI inherits formWindow
    open core, vpiDomains

clauses
    display(Parent) = Form :-
        Form = new(Parent),
        Form:show().

clauses
    new(Parent) :-
        formWindow::new(Parent),
        generatedInitialize().

predicates
    onStaticTextValidate : control::validateResponder.
clauses
    onStaticTextValidate(_Source) = control::contentsOk.

% This code is maintained automatically, do not update it manually.
facts
    ok_ctl : button.
    cancel_ctl : button.
    help_ctl : button.

predicates
    generatedInitialize : ().
clauses
    generatedInitialize() :-
        setText("firstGUI"),
        setRect(rct(50, 40, 290, 160)),
        setDecoration(titlebar([frameDecoration::maximizeButton, frameDecoration::minimizeButton, frameDecoration::closeButton])),
        setBorder(frameDecoration::sizeBorder),
        setState([wsf_ClipSiblings, wsf_ClipChildren]),
        menuSet(noMenu),
        ok_ctl := button::newOk(This),
        ok_ctl:setText("&OK"),
        ok_ctl:setPosition(48, 98),
        ok_ctl:setSize(56, 16),
        ok_ctl:defaultHeight := false,
        ok_ctl:setAnchors([control::right, control::bottom]),
        cancel_ctl := button::newCancel(This),
        cancel_ctl:setText("Cancel"),
        cancel_ctl:setPosition(112, 98),
        cancel_ctl:setSize(56, 16),
        cancel_ctl:defaultHeight := false,
        cancel_ctl:setAnchors([control::right, control::bottom]),
        help_ctl := button::new(This),
        help_ctl:setText("&Help"),
        help_ctl:setPosition(176, 98),
        help_ctl:setSize(56, 16),
        help_ctl:defaultHeight := false,
        help_ctl:setAnchors([control::right, control::bottom]),
        StaticText_ctl = textControl::new(This),
        StaticText_ctl:setText("Static text"),
        StaticText_ctl:setRect(vpiDomains::rct(36, 18, 204, 52)),
        StaticText_ctl:setLabel("Range Quest"),
        StaticText_ctl:addValidateResponder(onStaticTextValidate).
% end of automatic code

end implement firstGUI
