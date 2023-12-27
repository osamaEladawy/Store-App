/*

what does the application include?
1-categories
2-items
3-cart
4-favorite
5-oredr tracking for each stage of live tracking(google map)
6-rating
7-coupon
8-notification
9-payment methods with E wallet
10-web admin in order to control the application (Responsive)
*/
//-----------------------------------------------------------------------------
/*
what used in project ?
1-getx
2-sqflite
3-php and my sql
4-firebase
*/
/*
-------------------------------------------------------------------------------
system project: steps,
1-onboarding,
2-sign up,
(
1-when user create account,
2-must to navigate to the varfication page to validate the account or email by varfication code,
3-then,if the account is successfully, the user will be automatically go to the login page,
4-when user want to exit from the sign page,must show dialog to choose options,
),
2-login,
(
1-when user sign in account, must to navigation to the home page,
2-when user forget password,must to navigate to the fogetpassword page,to enter his email,
3-then,to navigate to the verification page, to write the verification code,
4-then,to navigate to reset the password page, to reset the password or create a new password,
5-then,to navigate to the login page,
6-when user want to exit from the sign page,must show dialog to choose options,

),

-------------------------------------------------------------------------------
 #-if i want  to delete or clear or dispose data from current page when
 used to textField and  navigation to next page,
    answer:=> three away to make this,
  1- Get.delete<name controller>() => used to in fubction in controller's current page,
  2- used laztput in current page,
  3- used bidding class and initialization in the main,
  ------------------------------------------------------------------------------
 #- if i want to fix doublicate global state when navigation to next page,
    but i used in this pages global state,
    answer:=> when i used navigation to next page, must be used push Replacement not push,
-------------------------------------------------------------------------------
#- how hidden and show password
1-i use onsecuretext in textfield,
2-Make the suffixIcon in the text field available for clicking,
because it is responsible for hiding and showing the password,
3-create variable in controler current page, and give it value,
4-create function in controler current page,to change haddin and show password,by variable,
-------------------------------------------------------------------------------
flutter luncher_icons => package used to create a icon for applications
-------------------------------------------------------------------------------
what is gealocator and how i used it package?
1- help me in know the locations the presons in the application,
2-help me to know space between old location and  current location or space betwenn two point
3-steps for use the package
1-after anstall the package add a permission into file minifist,
to help me know current location,
في امرين جدا مهمين في حالو استخدام هذه الخاصيه؟
1-نتاكد ان المستخدم مفعل خاصية location service
2-نتاكد ان المستخدم  اعطي امر للتطبيق للوصول الي الموقع الي هو اسمه permision

    git init
    git add .
    git commit -m "any words"
    then create new repository in github
    git remote add origin https://github.com/osamaEladawy/my-note-flutter.git
    git push origin master --force
*/

