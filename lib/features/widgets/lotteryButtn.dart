import '../../components/icons.dart';
import 'iconBtn.dart';

lotteryBtn buildLotteryBtn(void Function() theLotteryNumber) {
  return lotteryBtn(
    onPressed: theLotteryNumber,
    myIcon: myIcons.refresh,
  );
}