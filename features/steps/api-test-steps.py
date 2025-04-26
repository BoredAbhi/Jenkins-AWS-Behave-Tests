import requests
from behave import given, when, then

@given('I have the API endpoint "{url}"')
def step_given_api_endpoint(context, url):
    context.url = url

@when('I send a GET request')
def step_when_send_get(context):
    context.response = requests.get(context.url)

@then('the response status code should be {status_code:d}')
def step_then_status_code(context, status_code):
    assert context.response.status_code == status_code
