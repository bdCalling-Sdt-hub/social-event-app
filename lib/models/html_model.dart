class HtmlModel {
  final String id;
  final String content;

  HtmlModel({
    required this.id,
    required this.content,
  });

  factory HtmlModel.fromJson(Map<String, dynamic> json) {
    return HtmlModel(
      id: json['_id'] ?? '',
      content: json['content'] ??
          '[APPNAME] Terms of Service Last update time: [date] Welcome to [APPNAME]! This Terms of Service ("Terms") outlines the rules for using mobile applications and services ("Applications") provided by [your company] ("us" or "us"). By using this application, you agree to these terms. If you do not agree, please do not use this application. 1. Acceptance of terms By using this application, you mean that you have read, understood, and agreed to these terms and our privacy policy [link]. If you use this application for an organization, you must have the right to bind it to these terms. 2. User Guide a. Qualification: You must be at least [years old] to use this application. b. User account: To access certain functions, please create an account. Please ensure that your credentials are secure and do not share them. c. Prohibited activities: Unauthorized access, spam, harassment, or illegal content are prohibited. 3. User Content a. User Content Submission: You grant us permission to use the content you submitted in the application. b. Content restriction: Illegal, obscene, or offensive content is prohibited. 4. Intellectual Property All application content belongs to us or our licensors and is protected by law. 5. Termination We can terminate or suspend our account for any reason. 6. Disclaimer The application program is provided as is; Use it at your own risk. 7. Limitation of Liability We do not assume any responsibility for any damage caused by the use of this application. 8. Applicable Law These terms are governed by [jurisdiction] law. 9. Change of terms If significant changes occur, we will notify you, and your continued use means that you accept these changes. 10. Contact us If you have any questions, please contact [email]. By using [APPNAME], you agree to these terms.',
    );
  }
}
