# FieldsSerialize [![Gem Version](https://badge.fury.io/rb/fields_serialize.png)](http://badge.fury.io/rb/fields_serialize)

An alternative to jQuery $("form").serialize() when you are not using a form tag (for AJAX and stuff).

## Installation

Add this line to your application's Gemfile:

    gem 'fields_serialize'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fields_serialize

## Usage

Add the following directive to your JavaScript manifest file (application.js):

    //= require fields_serialize

## Using it to aid an AJAX request

### Instead of this:
```javascript
$.ajax({
  url: 'your-url-here',
  data: {
    'key_name' : {
      'field_1' : $('#field_1').val(),
      'field_2' : $('#field_2').val(),
      'field_3' : $('#field_3').val(),
      'field_4' : $('#field_4').val(),
      'field_5' : $('#field_5').val()
    }
  },
  type: 'POST'
});
```
### You can do this:
```javascript
$.ajax({
  url: "your-url-here",
  data: fieldsSerialize($('#your-selector'), 'key_name'),
  type: 'POST'
});
```    
## Contributors
- [Fernando Pereira](https://github.com/fernandopereira)
- [Brunno Gomes](https://github.com/brunnogomes)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
