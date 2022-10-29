package com;


public class Main {

    public static String getComment(String fieldComment, String tableName, String fieldName) {
        String sql = "exec sp_addextendedproperty N'备注',N'";
        sql = sql + fieldComment + "',N'user',N'dbo',N'table',N'" + tableName;
        sql = sql + "',N'column', N'" + fieldName + "';";
        return sql;
    }

    public static void main(String[] args) {
        Person.getInstance();
//        String readersFieldComment[] = {"读者编号","读者姓名","读者性别.","读者类型编号","家庭地址","电子邮件"};
//        String readerTypeFieldComment[] = {"读者类型编号","读者类型名称","可借数量"};
//        String booksFieldComment[] = {"图书编号","图书名称","图书作者","出版社编号","出版时间","ISBN","单价","图书种类编号"};
//        String bookCategoryFieldComment[] ={"图书种类编号","图书种类名称"};
//        String publishersFieldComment[] ={"出版社编号","出版社名称"};
//        String borrowFieldComment[] = {"读者编号","图书编号","借阅日期","实际归还日期"};
//        String penalty[] = {"读者编号","图书编号","罚款日期","罚款类型","罚款金额"};
//
//        String[] fieldName1 = {"RID","RName","RSex","Rtypeld","RAddress","Email"};
//        String[]fieldName2 = {"RTypeld","Rtype","Num",};
//        String[] fieldName3 = {"BID","Title","Author","Publd","PubDate ","ISBN","Price","Categoryld"};
//        String[] fieldName4={"categoryid","Name",};
//        String[] fieldName5 = {"PID","PName",};
//        String[] fieldName6 = {"RID","BID","LendDate","ReturnDate",};
//        String[] fieldName7 = {"RID","BID","PDate","PType","Amount",};
//
//        for (int i = 0; i < readersFieldComment.length-1; i++) {
//           String sql =getComment(readersFieldComment[i],"Readers",fieldName1[i]);
//            System.out.println( sql);
//        }
//        for (int i = 0; i < readerTypeFieldComment.length-1; i++) {
//            String sql =getComment(readerTypeFieldComment[i],"ReaderType",fieldName2[i]);
//            System.out.println( sql);
//        }
//        for (int i = 0; i < booksFieldComment.length-1; i++) {
//            String sql =getComment(booksFieldComment[i],"Books",fieldName3[i]);
//            System.out.println( sql);
//        }
//        for (int i = 0; i < bookCategoryFieldComment.length-1; i++) {
//            String sql =getComment(bookCategoryFieldComment[i],"BookCategory",fieldName4[i]);
//            System.out.println( sql);
//        }
//        for (int i = 0; i < publishersFieldComment.length-1; i++) {
//            String sql =getComment(publishersFieldComment[i],"Publishers",fieldName5[i]);
//            System.out.println( sql);
//        }
//        for (int i = 0; i < borrowFieldComment.length-1; i++) {
//            String sql =getComment(borrowFieldComment[i],"Borrow",fieldName6[i]);
//            System.out.println( sql);
//        }
//        for (int i = 0; i < penalty.length-1; i++) {
//            String sql =getComment(penalty[i],"Penalty",fieldName7[i]);
//            System.out.println( sql);
//        }
    }
}
