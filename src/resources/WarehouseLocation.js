import React from 'react';
import {
  List, Datagrid, TextField, NumberField, EditButton,
  Edit, SimpleForm, TextInput, NumberInput,
  Create, Show, SimpleShowLayout,
  ReferenceField
} from 'react-admin';

export const WarehouseLocationList = props => (
  <List {...props}>
    <Datagrid rowClick="show">
      <NumberField source="warehouselocationid" label='Id'/>
      <ReferenceField reference='warehouse' source='warehouseid' label='Warehouse'>
        <TextField source='warehousename' />
      </ReferenceField>
      <TextField source="productlocationinwarehouse" label='Location in Warehouse'/>
      <EditButton />
    </Datagrid>
  </List>
);

export const WarehouseLocationEdit = props => (
  <Edit {...props}>
    <SimpleForm>
      <NumberInput source="warehouselocationid" />
      <NumberInput source="warehouseid" />
      <TextInput source="productlocationinwarehouse" />
    </SimpleForm>
  </Edit>
);

export const WarehouseLocationCreate = props => (
  <Create {...props}>
    <SimpleForm>
      <NumberInput source="warehouselocationid" />
      <NumberInput source="warehouseid" />
      <TextInput source="productlocationinwarehouse" />
    </SimpleForm>
  </Create>
);

export const WarehouseLocationShow = props => (
  <Show {...props}>
    <SimpleShowLayout>
      <NumberField source="warehouselocationid" />
      <ReferenceField reference='warehouse' source='warehouseid' label='Warehouse'>
        <TextField source='warehousename' />
      </ReferenceField>
      <TextField source="productlocationinwarehouse" />
    </SimpleShowLayout>
  </Show>
);
