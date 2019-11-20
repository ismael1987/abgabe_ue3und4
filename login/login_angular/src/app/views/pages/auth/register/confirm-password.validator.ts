import { AbstractControl } from '@angular/forms';

export class ConfirmPasswordValidator {
	/**
	 * Check matching password with confirm password
	 * @param control AbstractControl
	 */
	static MatchPassword(control: AbstractControl) {
		const password = control.get('password').value;

		const confirmPassword = control.get('c_password').value;

		if (password !== confirmPassword) {
			control.get('c_password').setErrors({ConfirmPassword: true});
		} else {
			return null;
		}
	}
}
