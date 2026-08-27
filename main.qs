namespace QuantumBetGame {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Math;

    operation MeasureQubit() : Result {
        use q = Qubit();
        H(q);
        let result = M(q);
        Reset(q);

        return result;
    }

    @EntryPoint()
    operation Main() : Unit {
        Message("=== СТАВКИ НА КУБИТЫ ===");
        Message("0 ИЛИ 1?");
        Message("Введите 0 или 1:");

        let input = Microsoft.Quantum.Convert.StringToInt(
            Microsoft.Quantum.Intrinsic.ReadLine()
        );

        if (input != 0 and input != 1) {
            Message("ТЫ ТУПОЙ? 0 ИЛИ 1!!!!");
            return ();
        }

        let result = MeasureQubit();

        Message("ХАТОВО!");

        if (result == Zero) {
            Message("Выпало: 0");
        } else {
            Message("Выпало: 1");
        }

        if ((input == 0 and result == Zero) or
            (input == 1 and result == One)) {
            Message("ТЫ ЧИТЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕР!!!!!!!!!!!!!!!");
        } else {
            Message("ЛООООООООООООООООООООООООООООХХХ");
        }
    }
}
