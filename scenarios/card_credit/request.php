$card = Balanced\Card::get("{{request.card_href}}");
$card->credits->create(array(
{% for k, v in request.payload %}
{% if k == "amount" %}
    "{{ k }}" => {{ v }},
{% else %}
    "{{ k }}" => "{{ v }}",
{% endif %}
{% endfor %}
));