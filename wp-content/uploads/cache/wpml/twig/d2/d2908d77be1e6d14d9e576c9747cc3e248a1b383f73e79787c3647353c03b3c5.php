<?php

/* st-taxonomy-ui.twig */
class __TwigTemplate_d137bb0e3220f35aead6c0663b4b8e40012f272e187e6b95a782c4f43d09d1e5 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<p>
    <a href=\"";
        // line 2
        echo twig_escape_filter($this->env, (isset($context["link_url"]) ? $context["link_url"] : null), "html", null, true);
        echo "\">
        ";
        // line 3
        echo twig_escape_filter($this->env, (isset($context["link_label"]) ? $context["link_label"] : null), "html", null, true);
        echo "
    </a>
</p>
";
    }

    public function getTemplateName()
    {
        return "st-taxonomy-ui.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  26 => 3,  22 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "st-taxonomy-ui.twig", "E:\\OSPanel\\domains\\pirany.loc\\wp-content\\plugins\\woocommerce-multilingual\\templates\\st-taxonomy-ui.twig");
    }
}
