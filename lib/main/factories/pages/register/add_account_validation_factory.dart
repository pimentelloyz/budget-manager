import '../../../../presentation/protocols/protocols.dart';
import '../../../../validation/protocols/protocols.dart';
import '../../../builders/builders.dart';
import '../../../composites/composites.dart';

Validation makeAddAccountValidation() =>
    ValidationComposite(makeAddAccountValidations());

List<FieldValidation> makeAddAccountValidations() => [
      ...ValidationBuilder.field('name').required().min(3).build(),
      ...ValidationBuilder.field('email').required().email().build(),
      ...ValidationBuilder.field('phone').required().min(7).build(),
      ...ValidationBuilder.field('gender').required().min(1).build(),
    ];
