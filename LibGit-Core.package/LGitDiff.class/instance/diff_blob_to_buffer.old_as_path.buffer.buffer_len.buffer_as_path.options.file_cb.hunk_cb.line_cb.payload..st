libgit-calls
diff_blob_to_buffer: old_blob old_as_path: old_as_path buffer: buffer buffer_len: buffer_len buffer_as_path: buffer_as_path options: options file_cb: file_cb hunk_cb: hunk_cb line_cb: line_cb payload: payload
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_diff_blob_to_buffer(LGitBlob old_blob, String old_as_path, String buffer, NBUInt32 buffer_len, String buffer_as_path, LGitDiffOptions * options, LGitDiffFileCallback file_cb, LGitDiffHunkCallback hunk_cb, LGitDiffLineCallback line_cb, NBVoid * payload))
		options: #( optMayGC optCoerceNilToNull )