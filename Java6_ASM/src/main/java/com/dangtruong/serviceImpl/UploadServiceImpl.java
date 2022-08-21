package com.dangtruong.serviceImpl;

import java.io.File;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dangtruong.service.UploadService;

@Service
public class UploadServiceImpl implements UploadService{

    @Autowired
    ServletContext app;

    @Override
    public File save(MultipartFile file, String folder) {
        File dir = new File(app.getRealPath("/access/"+folder));
        if(!dir.exists()){
            dir.mkdirs();
        }
        String s = System.currentTimeMillis()+ file.getOriginalFilename();
        String name = Integer.toHexString(s.hashCode())+ s.substring(s.lastIndexOf("."));
        try{
            File saveFile = new File(dir, name);
            file.transferTo(saveFile);
            System.out.println(saveFile.getAbsolutePath()); 
            return saveFile;
        }catch(Exception e){
            throw new RuntimeException();
        }
    }
    
}
