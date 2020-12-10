 
 假如数据库有唯一索引验证唯一索引
 use Illuminate\Validation\Rule;
 
 
 $where = [
            'patient_id' => $request->get('pid'),
            'system_source' => $request->get('ssource'),
           
        ];
        
 [
                "required",
                'int',
                Rule::unique('test')
                    ->where(function($query) use($where){

                        return $query->where($where);})
            ],
