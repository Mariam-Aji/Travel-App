import 'package:travel_app/core/server/status_request.dart';

StatusRequest getStatusFromCode(int code) {
  switch (code) {
    case 200:
      return StatusRequest.success; // Typo correction: 'sucess' -> 'success'
    case 201:
      return StatusRequest.created;
    case 204:
      return StatusRequest.noContent;
    case 202:
      return StatusRequest.accepted;
    case 203:
      return StatusRequest.nonAuthoritative;
    case 205:
      return StatusRequest.resetContent;
    case 400:
      return StatusRequest.badRequest;
    case 401:
      return StatusRequest
          .authError; // Typo correction: 'authErorr' -> 'authError'
    case 402:
      return StatusRequest.paymentRequired;
    case 403:
      return StatusRequest.forbidden;
    case 404:
      return StatusRequest.urlError;
    case 422:
      return StatusRequest.validationError;
    case 500:
      return StatusRequest.serverError;
    default:
      return StatusRequest
          .unknownError; // It's better to have a fallback for unknown statuses
  }
}

String getMessageFromStatus(StatusRequest status) {
  switch (status) {
    case StatusRequest.success:
      return 'Request successful.';
    case StatusRequest.created:
      return 'Resource created successfully.';
    case StatusRequest.noContent:
      return 'No content to display.';
    case StatusRequest.accepted:
      return 'Request accepted and processing.';
    case StatusRequest.nonAuthoritative:
      return 'Non-authoritative information.';
    case StatusRequest.resetContent:
      return 'Please reset content.';
    case StatusRequest.badRequest:
      return 'Bad request. Please check your input.';
    case StatusRequest.authError:
      return 'Authentication error. Please log in.';
    case StatusRequest.paymentRequired:
      return 'Payment required.';
    case StatusRequest.forbidden:
      return 'Access denied. You do not have the necessary permissions.';
    case StatusRequest.urlError:
      return 'Resource not found.';
    case StatusRequest.validationError:
      return 'Validation error. Please check your input.';
    case StatusRequest.serverError:
      return 'Server error. Please try again later.';
    case StatusRequest.unknownError:
      return 'An unknown error occurred.';
    default:
      return 'Unexpected status. Please contact support.';
  }
}
