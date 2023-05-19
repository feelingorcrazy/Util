package org.vv.dict.entity;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * @author VV
 * @date 2023/5/19
 */
@Data
public class DictType {

	private String dictName;
	private String dictType;
	private int status = 0;
	private String remark;
	private List<DictData> dictDatas = new ArrayList<>();
}
