import React from 'react';
import {
  List, Datagrid, TextField, NumberField, EditButton,
  Edit, SimpleForm, TextInput, NumberInput,
  Create, Show, SimpleShowLayout
} from 'react-admin';

export const SupplierList = props => (
  <List {...props}>
    <Datagrid rowClick="show">
      <NumberField source="supplierid" />
      <TextField source="suppliername" />
      <TextField source="address" />
      <TextField source="contactperson" />
      <TextField source="phonenumber" />
      <EditButton />
    </Datagrid>
  </List>
);

export const SupplierEdit = props => (
  <Edit {...props}>
    <SimpleForm>
      <NumberInput source="supplierid" />
      <TextInput source="suppliername" />
      <TextInput source="address" />
      <TextInput source="contactperson" />
      <TextInput source="phonenumber" />
    </SimpleForm>
  </Edit>
);

export const SupplierCreate = props => (
  <Create {...props}>
    <SimpleForm>
      <NumberInput source="supplierid" />
      <TextInput source="suppliername" />
      <TextInput source="address" />
      <TextInput source="contactperson" />
      <TextInput source="phonenumber" />
    </SimpleForm>
  </Create>
);

export const SupplierShow = props => (
  <Show {...props}>
    <SimpleShowLayout>
      <NumberField source="supplierid" />
      <TextField source="suppliername" />
      <TextField source="address" />
      <TextField source="contactperson" />
      <TextField source="phonenumber" />
    </SimpleShowLayout>
  </Show>
);
