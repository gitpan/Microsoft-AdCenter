package Microsoft::AdCenter::Test::DummyService::Operation2Response;
# Copyright (C) 2012 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

sub _type_name {
    return 'Operation2Response';
}

sub _namespace_uri {
    return 'https://default.namespace.uri/default';
}

our @_attributes = (qw/
    ResponseAttributeA
    ResponseAttributeB
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    ResponseAttributeA => 'string',
    ResponseAttributeB => 'ComplexType2'
);

sub _attribute_type {
    my ($self, $attribute) = @_;
    if (exists $_attribute_type{$attribute}) {
        return $_attribute_type{$attribute};
    }
    return $self->SUPER::_attribute_type($attribute);
}

__PACKAGE__->mk_accessors(__PACKAGE__->_attributes);

1;
