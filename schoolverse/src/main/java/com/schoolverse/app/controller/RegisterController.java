package com.schoolverse.app.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.schoolverse.app.model.AcademyVO;
import com.schoolverse.app.model.ClassVO;
import com.schoolverse.app.model.ClassVO.ClassVOBuilder;
import com.schoolverse.app.model.ScheduleVO;
import com.schoolverse.app.model.TeacherVO;
import com.schoolverse.app.service.AcademyService;
import com.schoolverse.app.service.ClassService;
import com.schoolverse.app.service.ScheduleService;
import com.schoolverse.app.service.TeacherService;

@Controller
public class RegisterController {

	@Autowired
	private ScheduleService scheduleService;
	@Autowired
	private TeacherService teacherService;
	@Autowired
	private AcademyService academyService;
	@Autowired
	private ClassService classService;

	@RequestMapping(value = "/user/register", method = RequestMethod.GET)
	public String register(Model model) {
		return null;
	}

	@RequestMapping(value = "/user/register", method = RequestMethod.POST)
	public String register(Model model, AcademyVO acaVO, String[] class_name, String[] class_subject,
			String[] class_fee, String[] teacher_name, String[] teacher_info, String[] sche_day, String[] sche_period) {
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println(Arrays.toString(sche_period));
		System.out.println();
		System.out.println();
		System.out.println();
		academyService.insert(acaVO);

		Long aca_code = acaVO.getAca_code();
		Long aca_teacher = acaVO.getAca_teacher();
		List<Long> teacher_id_list = new ArrayList<>();

		for (int i = 0; i < teacher_name.length; i++) {
			TeacherVO vo = TeacherVO.builder().aca_teacher(aca_teacher).teacher_name(teacher_name[i])
					.teacher_info(teacher_info[i]).build();
			teacherService.insert(vo);
			teacher_id_list.add(vo.getTeacher_id());
		}

		int day = 0;
		List<String> scheList = Arrays.asList(sche_period);
		int j = 0;
		for (int i = 0; i < class_name.length; i++) {
			ClassVO classVO = ClassVO.builder().aca_code(aca_code).class_name(class_name[i])
					.class_subject(class_subject[i]).class_fee(class_fee[i]).build();
			classService.insert(classVO);
			// 수업 스케줄 넣기
			
			for (String s : scheList) {

				String[] sch = s.split(";");
				if (Integer.parseInt(sch[0]) == i) {
					int memo = 0;
						if(Integer.parseInt(sch[1]) == memo) {
							
						}
						ScheduleVO scheVO = ScheduleVO.builder().sche_code(classVO.getSche_code()).sche_day(sche_day[i])
								.sche_period(sch[2]).build();
						scheduleService.insert(scheVO);													
					

				}
			}
		}
		return null;
	}
}
