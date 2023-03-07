{%- macro cent_to_dollar(amt,dec=2) -%}
round(1.0*{{amt}} / 100,{{dec}})
{%- endmacro -%}