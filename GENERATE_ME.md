# How to generate me ?

Install openapi-generator or use `nix develop`.

then run

```bash
openapi-generator-cli generate -i https://api.brevo.com/v3/swagger_definition.yml -g ruby -o brevo-openapi "--additional-properties=gemName=brevo,library=httpx"
```
or

```bash
generate
```

https://github.com/OpenAPITools/openapi-generator/blob/master/docs/generators/ruby.md
