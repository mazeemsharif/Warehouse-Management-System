import React from 'react';
import {
  List, Datagrid, TextField, NumberField, EditButton,
  Edit, SimpleForm, TextInput, NumberInput,
  Create, Show, SimpleShowLayout
} from 'react-admin';

export const WarehouseList = props => (
  <List {...props}>
    <Datagrid rowClick="show">
      <NumberField source="warehouseid" />
      <TextField source="warehousename" label='Name'/>
      <TextField source="warehouselocation" label='Location'/>
      <TextField source="warehousetype" label='Type'/>
      <NumberField source="storagecapacity" label='Capacity'/>
      <NumberField source="availablespace" label='Space'/>
      <TextField source="contactinformation" label='Contact Info'/>
      <EditButton />
    </Datagrid>
  </List>
);

export const WarehouseEdit = props => (
  <Edit {...props}>
    <SimpleForm>
      <TextInput source="warehousename" label='Warehouse Name'/>
      <TextInput source="warehouselocation" label='Warehouse Location'/>
      <TextInput source="warehousetype" label='Type'/>
      <NumberInput source="storagecapacity" label='Capacity'/>
      <NumberInput source="availablespace" label='Space'/>
      <TextInput source="contactinformation" label='Contact Info'/>
    </SimpleForm>
  </Edit>
);

export const WarehouseCreate = props => (
  <Create {...props}>
    <SimpleForm>
      <TextInput source="warehousename" />
      <TextInput source="warehouselocation" />
      <TextInput source="warehousetype" />
      <NumberInput source="storagecapacity" />
      <NumberInput source="availablespace" />
      <TextInput source="contactinformation" />
    </SimpleForm>
  </Create>
);

export const WarehouseShow = props => (
  <Show {...props}>
    <SimpleShowLayout>
      <NumberField source="warehouseid" />
      <TextField source="warehousename" />
      <TextField source="warehouselocation" />
      <TextField source="warehousetype" />
      <NumberField source="storagecapacity" />
      <NumberField source="availablespace" />
      <TextField source="contactinformation" />
    </SimpleShowLayout>
  </Show>
);
