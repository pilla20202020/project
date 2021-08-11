@if(auth()->user()->id == 2)
<tr>
    <td>{{++$key}}</td>
    <td>{{ Str::limit($blog->title, 47) }}</td>
    <td>{{ Str::limit($blog->user->name, 47) }}</td>

    <td class="text-center">
        @if($blog->is_published =='1')
            <span class="badge" style="background-color: #419645">{{$blog->is_published ? 'Yes' : 'No'}}</span>
        @elseif($blog->is_published =='0')
            <span class="badge" style="background-color: #f44336">{{$blog->is_published ? 'Yes' : 'No'}}</span>
        @endif    </td>
    <td class="text-right">
        <a href="{{route('blog.edit', $blog->slug)}}" class="btn btn-flat btn-primary btn-xs" title="edit">
            <i class="glyphicon glyphicon-edit"></i>
        </a>
        <a href="{{ route('blog.destroy', $blog->id) }}">
        <button type="button" 
            class="btn btn-flat btn-danger btn-xs item-delete" title="delete">
            <i class="glyphicon glyphicon-trash"></i>
        </button>
    </td>
</tr>
@elseif($blog->user->id == auth()->user()->id)
<tr>
    <td>{{++$key}}</td>
    <td>{{ Str::limit($blog->title, 47) }}</td>
    <td>{{ Str::limit($blog->user->name, 47) }}</td>

    <td class="text-center">
        @if($blog->is_published =='1')
            <span class="badge" style="background-color: #419645">{{$blog->is_published ? 'Yes' : 'No'}}</span>
        @elseif($blog->is_published =='0')
            <span class="badge" style="background-color: #f44336">{{$blog->is_published ? 'Yes' : 'No'}}</span>
        @endif    </td>
    <td class="text-right">
        <a href="{{route('blog.edit', $blog->slug)}}" class="btn btn-flat btn-primary btn-xs" title="edit">
            <i class="glyphicon glyphicon-edit"></i>
        </a>
        <a href="{{ route('blog.destroy', $blog->id) }}">
        <button type="button" 
            class="btn btn-flat btn-danger btn-xs item-delete" title="delete">
            <i class="glyphicon glyphicon-trash"></i>
        </button>
    </td>
</tr>
    
@endif

