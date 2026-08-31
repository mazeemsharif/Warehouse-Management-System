import React from 'react';
import {
  List, Datagrid, TextField, NumberField, EditButton,
  Edit, SimpleForm, TextInput, NumberInput,
  Create, Show, SimpleShowLayout
} from 'react-admin';

export const CustomerList = props => (
  <List {...props}>
    <Datagrid rowClick="show">
      <NumberField source="customerid" />
      <TextField source="customername" />
      <TextField source="phonenumber" />
      <TextField source="billingaddress" />
      <EditButton />
    </Datagrid>
  </List>
);

export const CustomerEdit = props => (
  <Edit {...props}>
    <SimpleForm>
      <NumberInput source="customerid" />
      <TextInput source="customername" />
      <TextInput source="phonenumber" />
      <TextInput source="billingaddress" />
    </SimpleForm>
  </Edit>
);

export const CustomerCreate = props => (
  <Create {...props}>
    <SimpleForm>
      <NumberInput source="customerid" />
      <TextInput source="customername" />
      <TextInput source="phonenumber" />
      <TextInput source="billingaddress" />
    </SimpleForm>
  </Create>
);

export const CustomerShow = props => (
  <Show {...props}>
    <SimpleShowLayout>
      <NumberField source="customerid" />
      <TextField source="customername" />
      <TextField source="phonenumber" />
      <TextField source="billingaddress" />
    </SimpleShowLayout>
  </Show>
);
