@tool
extends Node3D


var surface_tool
func _ready():
	var surface_tool := SurfaceTool.new()
	surface_tool.begin(Mesh.PRIMITIVE_TRIANGLES)
	surface_tool.add_vertex(Vector3(0, 0, 0))
	surface_tool.add_vertex(Vector3(0, 1, 0))
	surface_tool.add_vertex(Vector3(1, 1, 0))
	var mesh = surface_tool.commit()
	var mesh_ins = MeshInstance3D.new()
	mesh_ins.mesh = mesh
	add_child(mesh_ins)


func _process(delta):
	pass
