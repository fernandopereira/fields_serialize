function fieldsSerialize(fields, mainKeyName) {
  var data = {}
  var _item = {}
  var tam = mainKeyName.length

  $.each(fields.find('INPUT,SELECT').serializeArray(), function() {
    var keyName = $(this)[0].name.substr(0,tam)
    var attr = $(this)[0].name.substr(tam + 1)
    var value = $(this)[0].value

    if(keyName === mainKeyName) {
      _item[attr] = value
    } else {
      data[$(this)[0].name] = value
    }
  });
  data[mainKeyName] = _item

  return data
};
