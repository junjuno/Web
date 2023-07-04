package aproject.controller;

import java.util.Scanner;

import aproject.model.EmpService;
import aproject.view.EmpView;

public class EmpController {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		EmpService eService = new EmpService();
		
		while(true) {
			System.out.println("1.모든직원");
			System.out.println("2.직원 상세 조회");
			System.out.println("3.부서의 직원");
			System.out.println("4.부서, 직책, 급여로 조회");
			System.out.println("exit 종료");
			System.out.print("======작업 선택>>>>>>>");
			
			String job = sc.next();
			if(job.equals("exit")) break;
			switch (job) {
			case "1":
				EmpView.print(eService.selectAll());break;
			case "2":
				System.out.print("조회할 직원번호>>");
				int empid = sc.nextInt();
				EmpView.print(eService.selectById(empid));break;
			case "3":{
				System.out.print("조회할 부서번호>>");
				int deptid = sc.nextInt();
				EmpView.print(eService.selectByDept(deptid));break;
			}
			case "4":{
				System.out.print("조회할 부서번호, job, salary>>");
				int deptid= sc.nextInt();
				String jobid= sc.next();
				double salary= sc.nextDouble();
				EmpView.print(eService.selectByCondition(deptid, jobid, salary));break;
			}
			default:
				break;
			}
		}
		System.out.println("수고하셨습니다........");
	}

}
