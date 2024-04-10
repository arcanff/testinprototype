const validarFormulario = async (datos) => {
    const camposVacios = Object.values(datos).some((value) => value === "");

    if (camposVacios) {
        //Mostrar una alerta si hay campos vacíos
        await Swal.fire({
        icon: "error",
        title: "Error",
        text: "Por favor, complete todos los campos",
        });
        return false;
    }

  //Mostrar una confirmación antes de crear el producto
    const confirmacion = await Swal.fire({
        icon: "question",
        title: "¿Estás seguro de crear el producto?",
        showCancelButton: true,
        confirmButtonText: "Sí, crear producto",
        cancelButtonText: "Cancelar",
    });

    return confirmacion.isConfirmed;
};

export default validarFormulario;
