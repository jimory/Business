package com.etc.bussiness.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileUtils {
	public static void copyFile(String savePath,String fileName,File file){

		File saveDir = new File(savePath);
		if(!saveDir.exists()){
			saveDir.mkdirs();
		}

		FileOutputStream fos = null;
		FileInputStream fis = null;
		try {
			// �����ļ������
			fos = new FileOutputStream(savePath + "\\" + fileName);
			// �����ļ��ϴ���
			fis = new FileInputStream(file);
			byte[] buffer = new byte[1024];
			int len = 0;
			while ((len = fis.read(buffer)) >0) {
				fos.write(buffer, 0, len);
			}

		} catch (Exception e) {
			System.out.println("�ļ��ϴ�ʧ��");
			e.printStackTrace();
		} finally {
			close(fos, fis);
		}
	}

	private static void close(FileOutputStream fos, FileInputStream fis) {
		if (fis != null) {
			try {
				fis.close();
			} catch (IOException e) {
				System.out.println("FileInputStream�ر�ʧ��");
				e.printStackTrace();
			}
		}
		if (fos != null) {
			try {
				fos.close();
			} catch (IOException e) {
				System.out.println("FileOutputStream�ر�ʧ��");
				e.printStackTrace();
			}
		}
	}



}
