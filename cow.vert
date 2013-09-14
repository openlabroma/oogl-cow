precision mediump float;

attribute vec3 in_Vertex;

void main() {
	gl_Position = mat4(
		1, 0, 0, 0,
		0, 1, 0, 0,
		0, 0, 0, 1,
		0, 0, 1, 0
	) * mat4(
		1, 0, 0, 0,
		0, 1, 0, 0,
		0, 0, 1, 0,
		0, 0, 10.0, 1
	) * mat4(
		1, 0, 0, 0,
		0, 1, 0, 0,
		0, 0, 0.001, 0,
		0, 0, 0, 1
	) * vec4(in_Vertex, 1.0);
}
