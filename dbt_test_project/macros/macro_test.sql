{%- macro macro_test(name) -%}

select {{name}}

{%- endmacro -%}


{%- macro process_log(log_type) -%}

insert into logging.Process (log_type) values ('{{log_type}}');

{%- endmacro -%}
