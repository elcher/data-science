{%- extends 'basic.tpl' -%}

{% block output_group %}
<div class="output_wrapper output_hidden output_scroll">
  <div class="output">
    {{ super() }}
  </div>
</div>
{% endblock output_group %}

{% block input %}
<div class="inner_cell">
  <div class="input_area">
    {{ cell.source | highlight_code(metadata=cell.metadata) }}
    <i class="icon-hand-up icon-large" style="float:right; margin-bottom:8px; margin-right:10px">
    &nbsp;&nbsp;Click me to hide the output</i>
  </div>
</div>
{%- endblock input %}

{%- block header -%}
    {{ super() }}
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <style type="text/css">
    div.output_wrapper {
                       margin-top: 0px;
                       }
.output_hidden {
  display: none;
  margin-top: 5px;
}
.output_wrapper, .output {
    height:auto !important;
    max-height:100px;  /* your desired max-height here */
}
.output_scroll {
    box-shadow:none !important;
    webkit-box-shadow:none !important;
}
.icon-hand-up:before {
  font-family: "Font Awesome 5 Free";
  content: "\f0a6";
}
</style>

<script>
$(document).ready(function(){
  $(".input").click(function(){
      $(this).next('.output_hidden').slideToggle();
  });
})
</script>
{%- endblock header -%}
