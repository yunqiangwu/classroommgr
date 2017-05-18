package tk.mybatis.springboot.service;

import tk.mybatis.springboot.model.BaseEntity;
import tk.mybatis.springboot.util.MyMapper;

import java.util.List;

/**
 * Created by wayne on 2017/5/16.
 */
public abstract class BaseService<T extends BaseEntity> {

    public int submit(List<T> entityList){
        int retnum = 0;
        MyMapper<T> mapper = getMapper();
        for (T entity :
                entityList) {

            switch (entity.get__status()){
                case "delete":
                    if(entity.getId()!=null){
                        retnum +=mapper.deleteByPrimaryKey(entity.getId());
                    }
                    break;
                case "add":
                    if(entity.getId()==null){
                        retnum +=mapper.insert(entity);
                    }
                    break;
                case "update":
                    if(entity.getId()!=null){
                        retnum +=mapper.updateByPrimaryKey(entity);
                    }
                    break;

                default:

                    break;
            }
        }

        return retnum;
    }


    abstract MyMapper<T> getMapper();

}
