%-----------------------------------------------------------------------------%
%
% File: problem1.m
% Main author: Sean Charles
% Date: Sun Apr  3 07:36:19 2022
%
%-----------------------------------------------------------------------------%
% PROBLEM 1: Multiples of 3 or 5
%
% If we list all the natural numbers below 10 that are multiples of 3 or 5, we
% get 3, 5, 6 and 9. The sum of these multiples is 23.
%
% Find the sum of all the multiples of 3 or 5 below 1000.
%
%-----------------------------------------------------------------------------%
:- module problem1.

:- interface.
:- import_module io.

:- pred main(io::di, io::uo) is det.

:- implementation.
:- import_module int.
:- import_module list.
:- import_module string.

%----------------------------------------------------------------------------%
%----------------------------------------------------------------------------%

    % Main for Problem1.
    % Pass a number as the only argument, this is the limit. If it's not a
    % valid number string it's going to crash and burn but so what.
    %
main(!IO) :-
    io.command_line_arguments(Args, !IO),
    (
        Args = [Arg1 |_]
    ->
            % ASSUME its a valid number!
        Limit = string.det_to_int(Arg1),

        m3or5_1(1, Limit, 0, Total1),
        m3or5_2(1, Limit, 0, Total2),

        io.format("method1: range: total: %i\n", [i(Total1)], !IO),
        io.format("method2: range: total: %i\n", [i(Total2)], !IO)
    ;
        io.format("usage:- ./problem1 N\n", [], !IO)
    ).

%----------------------------------------------------------------------------%

    % Version 1
    % - more conventional if-then-else approach
    %
:- pred m3or5_1(int::in, int::in,int::in, int::out) is det.

m3or5_1(N, Limit, !Acc) :-
    ( if N < Limit then
        ( if (N mod 3 = 0 ; N mod 5 = 0) then
            !:Acc = !.Acc+ N
        else
            true
        ),
        m3or5_1(N+1, Limit, !Acc)
    else
        true
    ).

%----------------------------------------------------------------------------%

    % Version 2
    % - factor out the test, more Prolog like use of "-> ;"
    %
:- pred m3or5_2(int::in, int::in,int::in, int::out) is det.

m3or5_2(N, Limit, !Acc) :-
    (   N < Limit
    ->
        (   is_mult3ormult5(N)
        ->
            m3or5_2(N+1, Limit, !.Acc+N, !:Acc)
        ;
            m3or5_2(N+1, Limit, !Acc)
        )
    ;
        true % done!
    ).


:- pragma inline(is_mult3ormult5/1).
:- pred is_mult3ormult5(int::in) is semidet.

is_mult3ormult5(N) :-
    ( N mod 3 = 0 ; N mod 5 = 0 ).


%----------------------------------------------------------------------------%
:- end_module problem1.
%----------------------------------------------------------------------------%

