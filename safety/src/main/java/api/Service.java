package api;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.CityDTO;
import com.dto.CountryDTO;
import com.dto.HotelDTO;
import com.dto.SafetyDTO;

public class Service {
	
	// 안전 정보 저장 
	public void safetyInsert(SafetyDTO dto) throws MyException {
		SqlSession session = MySqlSessionFactory.getSession();
		
		try {
			int n = session.insert("SafetyMapper.safetyInsert", dto);
			
			if(n != 1) {
				session.rollback();
				throw new MyException("안전정보 추가 에러");
			} else {
				session.commit();
			}
		} catch(Exception e) {
			e.printStackTrace();
			throw new MyException("안전정보 추가 에러");
		} finally {
			session.close();
		}
	}
	
	// 국가 검색 
	public CountryDTO countrySelectOneByCname(String cname) throws MyException {
		SqlSession session = MySqlSessionFactory.getSession();
		CountryDTO dto = null;
		
		try {
			dto = session.selectOne("CountryMapper.countrySelectOneByCname", cname);
		} catch(Exception e) {
			e.printStackTrace();
			throw new MyException("국가 검색 에러");
		} finally {
			session.close();
		}
		
		return dto;
	}
	
	// 도시 검색
	public List<CityDTO> getCityList() throws MyException {
		SqlSession session = MySqlSessionFactory.getSession();
		List<CityDTO> list = null;
		
		try {
			list = session.selectList("CityMapper.getCityList");
		} catch(Exception e) {
			e.printStackTrace();
			throw new MyException("도시no 검색 에러");
		} finally {
			session.close();
		}
		
		return list;
	}
	
	// 호텔 저장
	public void hotelInsert(HotelDTO dto) throws MyException {
		SqlSession session = MySqlSessionFactory.getSession();
		
		try {
			int n = session.insert("HotelMapper.hotelInsert", dto);
			
			if(n != 1) {
				session.rollback();
				throw new MyException("호텔 추가 에러");
			} else {
				session.commit();
			}
		} catch(Exception e) {
			e.printStackTrace();
			throw new MyException("호텔 추가 에러");
		} finally {
			session.close();
		}
	}
}
