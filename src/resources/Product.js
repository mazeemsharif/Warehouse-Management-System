import React from 'react';
import {
  List, Datagrid, TextField, NumberField, EditButton,
  Edit, SimpleForm, TextInput, NumberInput,
  Create, Show, SimpleShowLayout,
  ReferenceField
} from 'react-admin';

export const ProductList = props => (
  <List {...props}>
    <Datagrid rowClick="show">
      <NumberField source="productid" />
      <TextField source="productname" />
      <NumberField source="sku" />
      <TextField source="productdescription" />
      <TextField source="category" />
      <TextField source="manufacturer" />
      <ReferenceField reference='supplier' source='supplierid' label='supplier'>
        <TextField source="suppliername" />
      </ReferenceField>
      <NumberField source="barcodevalue" />
      <EditButton />
    </Datagrid>
  </List>
);

export const ProductEdit = props => (
  <Edit {...props}>
    <SimpleForm>
      <NumberInput source="productid" />
      <TextInput source="productname" />
      <NumberInput source="sku" />
      <TextInput source="productdescription" />
      <TextInput source="category" />
      <TextInput source="manufacturer" />
      <NumberInput source="supplierid" />
      <NumberInput source="barcodevalue" />
    </SimpleForm>
  </Edit>
);

export const ProductCreate = props => (
  <Create {...props}>
    <SimpleForm>
      <NumberInput source="productid" />
      <TextInput source="productname" />
      <NumberInput source="sku" />
      <TextInput source="productdescription" />
      <TextInput source="category" />
      <TextInput source="manufacturer" />
      <NumberInput source="supplierid" />
      <NumberInput source="barcodevalue" />
    </SimpleForm>
  </Create>
);

export const ProductShow = props => (
  <Show {...props}>
    <SimpleShowLayout>
      <NumberField source="productid" />
      <TextField source="productname" />
      <NumberField source="sku" />
      <TextField source="productdescription" />
      <TextField source="category" />
      <TextField source="manufacturer" />
      <NumberField source="supplierid" />
      <NumberField source="barcodevalue" />
    </SimpleShowLayout>
  </Show>
);
