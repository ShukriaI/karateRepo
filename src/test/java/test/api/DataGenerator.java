package test.api;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;

import com.ibm.icu.text.SimpleDateFormat;


import net.datafaker.Faker;

public class DataGenerator {

	public static String getEmail() {

		Faker faker = new Faker();
		String email = faker.name().firstName() + faker.name().lastName() + "@tekschool.us";
		return email;

	}

	public static String getFirstName() {

		Faker faker = new Faker();

		return faker.name().firstName();

	}

	public static String getLastName() {

		Faker faker = new Faker();

		return faker.name().lastName();

	}

	public static String getTitle() {

		Faker faker = new Faker();

		return faker.name().prefix().toUpperCase();

	}

	public static String getDOB() {

		Faker faker = new Faker();

		Date date = faker.date().birthday();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.format(date);

	}

	public static String getGender() {

		Faker faker = new Faker();

		return faker.dog().gender().toUpperCase();

	}

	public static String getEmploymentStatus() {

		Faker faker = new Faker();

		return faker.job().position();

	}
	public static String getMaritalStatus() {
		
		Faker faker = new Faker();
		
		ArrayList<String> maritalStatus = new ArrayList<String>();
		maritalStatus.add("SINGLE");
		maritalStatus.add("MARRIED");
		maritalStatus.add("DIVORCED");
		maritalStatus.add("WIDOW");
		maritalStatus.add("WIDOWER");
		Collections.shuffle(maritalStatus);
	    return maritalStatus.get(0);	
		
	}
	
	
	public static String getCarModel() {
		
		Faker faker = new Faker();
		return faker.vehicle().make();
		
		
	}
	public static String getCarMake() {
		Faker faker = new Faker();
		
		return faker.vehicle().make();
		
		
	}
	
	public static String getCarYear() {
		Faker faker = new Faker();
		Date date = faker.date().birthday();
		SimpleDateFormat format = new SimpleDateFormat("YYYY");
		return format.format(date);

	}
	
	public static String getLicense() {
		Faker faker = new Faker();
		
		return faker.vehicle().licensePlate() ;
		
	}
	
	public static String getPhone() {
		Faker faker = new Faker();
		return  faker.phoneNumber().cellPhone();	
	}
	
	
	public static String getPhoneExtention() {
		Faker faker = new Faker();
		return  faker.phoneNumber().extension();
		
	}
	public static String getPhoneTime() {
		Faker faker = new Faker();
		ArrayList<String> phoneTime= new ArrayList<String>();
		phoneTime.add("Morning");
		phoneTime.add("Morning");
		phoneTime.add("Morning");
		Collections.shuffle(phoneTime);
		return phoneTime.get(0);
	}
	
	public static String getPhoneType() {
		ArrayList<String> phoneType= new ArrayList<String>();
		phoneType.add("LANDLINE");
		phoneType.add("CELLPHONE");
		Collections.shuffle(phoneType);
		return phoneType.get(0);
		
	}
	
	
	public static String getAddressType() {
		ArrayList<String> addressType= new ArrayList<String>();
		addressType.add("APPARTMENT");
		addressType.add("HOME");
		Collections.shuffle(addressType);
		return addressType.get(0);
		
	}
	
	
	public static String getAddressLine() {
		Faker faker = new Faker();
			
		return faker.address().buildingNumber();
		
	}
	
	public static String getCity() {
		Faker faker = new Faker();
		
		return faker.address().city();
		
	}
	
	public static String getState() {
		Faker faker = new Faker();
		return faker.address().state();
		
	}
	
	public static String getPostalCode() {
		Faker faker = new Faker();
		return faker.address().zipCode();
		
	}
	
	public static String getCountryCode() {
		Faker faker = new Faker();
		return faker.address().countryCode();
		
	}
	
	
	
	
	
	
	
	
	
}
