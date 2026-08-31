import React from 'react';
import {
  List, Datagrid, TextField, NumberField, EditButton,
  Edit, SimpleForm, TextInput, NumberInput,
  Create, Show, SimpleShowLayout
} from 'react-admin';

export const ReturnPList = props => (
  <List {...props}>
    <Datagrid rowClick="show">
      <NumberField source="returnid" />
      <NumberField source="orderid" />
      <NumberField source="productid" />
      <TextField source="returndate" />
      <NumberField source="quantityreturned" />
      <TextField source="reasonforreturn" />
      <EditButton />
    </Datagrid>
  </List>
);

export const ReturnPEdit = props => (
  <Edit {...props}>
    <SimpleForm>
      <NumberInput source="returnid" />
      <NumberInput source="orderid" />
      <NumberInput source="productid" />
      <TextInput source="returndate" />
      <NumberInput source="quantityreturned" />
      <TextInput source="reasonforreturn" />
    </SimpleForm>
  </Edit>
);

export const ReturnPCreate = props => (
  <Create {...props}>
    <SimpleForm>
      <NumberInput source="returnid" />
      <NumberInput source="orderid" />
      <NumberInput source="productid" />
      <TextInput source="returndate" />
      <NumberInput source="quantityreturned" />
      <TextInput source="reasonforreturn" />
    </SimpleForm>
  </Create>
);

export const ReturnPShow = props => (
  <Show {...props}>
    <SimpleShowLayout>
      <NumberField source="returnid" />
      <NumberField source="orderid" />
      <NumberField source="productid" />
      <TextField source="returndate" />
      <NumberField source="quantityreturned" />
      <TextField source="reasonforreturn" />
    </SimpleShowLayout>
  </Show>
);
