/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.crud;
import java.util.List;
/**
 *
 * @author Користувач
 */
public interface CrudDataInterface {
    
void createData(DataList addingData);

    List<DataList> readData();

    void updateData(int id, DataList data);

    void deleteData(int id);

    void writeData(List<DataList> data);
    
    public List<DataList> sortData(String phrase);

}
