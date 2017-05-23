/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2014-2016 abel533@gmail.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

package tk.mybatis.springboot.service;

import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.springboot.mapper.SigninRecordMapper;
import tk.mybatis.springboot.model.SigninRecord;
import tk.mybatis.springboot.util.MyMapper;

import java.util.List;

/**
 * @author liuzh
 * @since 2016-01-31 21:42
 */
@Service
public class SigninRecordService extends BaseService<SigninRecord>{

    @Autowired
    private SigninRecordMapper signinRecordMapper;

    public List<SigninRecord> getAll(SigninRecord signinRecord) {
        if (signinRecord.getPage() != null && signinRecord.getRows() != null) {
            PageHelper.startPage(signinRecord.getPage(), signinRecord.getRows());
        }
        return signinRecordMapper.select(signinRecord);
    }

    public SigninRecord getById(Integer id) {
        return signinRecordMapper.selectByPrimaryKey(id);
    }

    public void deleteById(Integer id) {
        signinRecordMapper.deleteByPrimaryKey(id);
    }

    public void save(SigninRecord country) {
        if (country.getId() != null) {
            signinRecordMapper.updateByPrimaryKey(country);
        } else {
            signinRecordMapper.insert(country);
        }
    }

	public SigninRecord findByNameOne(String name) {
		SigninRecord SigninRecord = new SigninRecord();
		SigninRecord.setName(name);
		return signinRecordMapper.selectOne(SigninRecord);
	}

    @Override
    MyMapper getMapper() {
        return signinRecordMapper;
    }
}
