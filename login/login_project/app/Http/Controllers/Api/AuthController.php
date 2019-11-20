<?php
namespace App\Http\Controllers\Api;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;
use Validator;
use App\Http\Resources\User\UserCollection;

class AuthController extends Controller
{
    public $successStatus = 200;

    public function register(Request $request) {
        $validator = Validator::make($request->all(),
            [
                'name' => 'required',
                'email' => 'required|email',
                'password' => 'required',
                'c_password' => 'required|same:password',
            ]);
        if ($validator->fails()) {
            return response()->json(['error'=>$validator->errors()], 401);                        }
        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
//        $success['token'] =  $user->createToken('AppName')->accessToken;
        return response()->json('success', $this->successStatus);
    }


    public function login(){
        if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){
            $user = Auth::user();
            $success['accessToken'] =  $user->createToken('login')-> accessToken;
            $success['username']=$user->name;
            $success['id']=$user->id;
            return response()->json( $success, $this-> successStatus);
        } else{
            return response()->json(['error'=>'Unauthorised'], 401);
        }
    }
    public function find_user(Request $request){
        $page = $request->input('pageNumber');
        $search = $request->input('filter.name',null);
        $perpage = $request->input('pageSize',10);
        $sortOrder = $request->input('sortOrder','asc');
        $sortField = $request->input('sortField','id');
        $offset = ($page) * $perpage;
        $query = User::offset($offset)
            ->limit($perpage);

        if (!is_null($search)) {
            $query->whereRaw("name like '%$search%' or email like '%$search%'or phone like '%$search%' ");
        }


        $totalCount = $query->count();

        $query->orderBy($sortField,$sortOrder);
        $data = $query->get();
//        $request->offsetSet('pages',ceil($totalCount / $perpage));
        $request->offsetSet('total',$totalCount);
        return response()->json( new UserCollection($data));

    }

    public function get_user() {
        $user = Auth::user();
        $success['accessToken'] =  $user->createToken('login')-> accessToken;
        $success['name']=$user->name;
        $success['id']=$user->id;
        return response()->json( $success, $this-> successStatus);
    }
}
