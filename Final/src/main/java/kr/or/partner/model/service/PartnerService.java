package kr.or.partner.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sun.xml.internal.bind.v2.runtime.reflect.Lister.Pack;

import kr.or.partner.model.vo.Package;

import kr.or.member.model.vo.User;
import kr.or.partner.model.dao.PartnerDao;
import kr.or.partner.model.vo.Option;
import kr.or.partner.model.vo.Product;

@Service
public class PartnerService {
	@Autowired
	private PartnerDao dao;

	public User selectOnePatner(User u) {

		return dao.selectOnePartner(u);
	}

	public int insertPartner(User u) {
		// TODO Auto-generated method stub
		return dao.insertPartner(u);
	}

	public int packageInsert(Package pa, int[] productNum, String[] productName, String[] optionName, String[] optionPrice) {
		// TODO Auto-generated method stub
//		for(int i=0;i<productNum.length;i++) {
//			System.out.println("프로덕트 번호" + productNum[i]);
//		}
//		for(int i=0;i<productName.length;i++) {
//			System.out.println("프로덕트 이름" + productName[i]);
//		}
//		for(int i=0;i<optionName.length;i++) {
//			System.out.println("옵션이름 " +optionName[i]);
//		}
//		for(int i=0;i<optionPrice.length;i++) {
//			System.out.println("옵션 가격" + optionPrice[i]);	
//		}
		int result = dao.packageInsert(pa);
		if (result > 0) {

			int pacNo = dao.selectPacNo();
			for (int i = 0; i < productName.length; i++) {
				Product pro = new Product();
				pro.setPackageProductNo(pacNo);
				pro.setProductName(productName[i]);
				int productResult = dao.productInsert(pro);

				if (productResult > 0) {
					int proNo = dao.selectProNo();
					for (int j = 0; j < productNum.length; j++) {
						if (productNum[j] == i) {
							Option op = new Option();
							op.setProductNo(proNo);
							op.setOptionName(optionName[j]);
							op.setOptionPrice(optionPrice[j]);
							int optionResult = dao.optionInsert(op);
						}
					}
					
				}else {
					return 0;
				}

			}
			
		} else {
			return 0;
		}
		return 1;	
	}


	public int selectPackage(int partnerNo) {
//		System.out.println(partnerNo);
		return dao.selectPackage(partnerNo);
	}

	public ArrayList<Package> packageList() {
		// TODO Auto-generated method stub
		return dao.packageList();
	}

	public Package selectOnePackage(int partnerNo) {
		// TODO Auto-generated method stub
		Package pac = new Package();
		pac = dao.selectOnePackage(partnerNo);
		List productList = dao.selectProduct(pac.getPackageProductNo());
		pac.setProductList((ArrayList<Product>)productList);
		return pac;
	}

	/*
	 * public ArrayList<Product> prodcutList() { // TODO Auto-generated method stub
	 * return dao.productList(); }
	 */
	

}
