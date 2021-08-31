package net.daum.service;



import java.util.List;

import net.daum.vo.EventVO;

public interface EventService {

	

	int getTotalCount(EventVO e);

	List<EventVO> getEventList(EventVO e);

	void insertEvent(EventVO e);
	

}