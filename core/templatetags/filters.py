from django import template

register = template.Library()

@register.filter()
def upfirstletter(value):
    first = value[0] if len(value) > 0 else ''
    remaining = value[1:] if len(value) > 1 else ''
    return first.upper() + remaining

@register.filter
def range_filter(value):
    return range(value)