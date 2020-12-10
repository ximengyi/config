 
 自定义验证规则
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
