package com.example.community;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.appcompat.app.AlertDialog;

import com.bumptech.glide.Glide;
import com.example.DTO.BoardDTO;
import com.example.PUPPYPLE.R;

import java.util.ArrayList;

public class MainBoardListViewAdapter extends BaseAdapter {

    private static final String TAG = "main:BoardAdapter";

    //메인에서 넘겨받을것 -> 생성자를 만든다.
    //화면이 없는 것들은 context를 받아줘야한다.

    Context context;
    ArrayList<BoardDTO> dtos;

    //화면을 붙이기 위해서, 객체 생성
    LayoutInflater inflater;
    AlertDialog dialog;

    public MainBoardListViewAdapter(Context context, ArrayList<BoardDTO> dtos) {
        this.context = context;
        this.dtos = dtos;

        this.inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
    }
/////////////////////////////////////////////////////////////////////////////////
    //여기 안에서만 메소드를 만들어서 추가할 것

    //메소드를 만들때는 무조건 여기에 생성을 해줘야한다. 여기라는 말은 adapter에서
    //하나의 dto 추가하기 (PetDTO)

    public void addDto(BoardDTO dto) {
        dtos.add(dto);
    }

    //dtos에 저장된 dto 갯수
    @Override
    public int getCount() {
        return dtos.size();
    }

    //dtos에 특정위치에 있는 dto 가져오기(SingerDTO)
    @Override
    public Object getItem(int position) {
        return dtos.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    //가장중요하다. : 화면을 생성하고 특정 클릭이벤트를 만들수 있다.
    //만약 화면 5개를 생성한다면 getView가 5번 실행된다.
    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        Log.d(TAG, "getView: " +position);

        MainBoardListViewHolder BoardListViewHolder;

        if(convertView == null) {
            //없기때문에 화면을 생성한다.
            convertView = inflater.inflate(R.layout.main_listview_templete,
                    parent, false);

            BoardListViewHolder = new MainBoardListViewHolder();

            //생성한 곳에 petListViewHolder에 있는 tvpetname과 singerview.xml에 있는 것과
            //tvpet과 연결을시켜준다.
            //붙인 화면과 아래에 생성한 뷰홀더를 연결한다.

            BoardListViewHolder.tvBoardListViewTitle = convertView.findViewById(R.id.tvBoardListViewTitle);
            convertView.setTag(BoardListViewHolder);

        }else {//캐시된 뷰가 있을 경우 그냥 거기에 getTag로 넣어준다는 의미

            BoardListViewHolder = (MainBoardListViewHolder) convertView.getTag();

        }

        //먼저 선택한 DTO 데이터 가져오기
        BoardDTO dto = dtos.get(position);
        String board_title = dto.getBoard_title();
        BoardListViewHolder.tvBoardListViewTitle.setText(board_title);

        return convertView;

    }


    //3. xml 파일을 사용된 모든 변수를 adapter에서 선언하다.
    public class MainBoardListViewHolder {
        public TextView tvBoardListViewTitle;
    }


}

