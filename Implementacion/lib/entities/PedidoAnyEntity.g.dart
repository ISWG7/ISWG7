// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PedidoAnyEntity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PedidoAnyEntity _$PedidoAnyEntityFromJson(Map<String, dynamic> json) {
  return PedidoAnyEntity(
    descripcion: json['descripcion'] as String?,
    pathImagen: json['pathImagen'] as String?,
    entrega: json['entrega'] == null
        ? null
        : DireccionEntity.fromJson(json['entrega'] as Map<String, dynamic>),
    retiro: json['retiro'] == null
        ? null
        : DireccionEntity.fromJson(json['retiro'] as Map<String, dynamic>),
    medioPago: json['medioPago'] as String?,
    pagoEfectivo: (json['pagoEfectivo'] as num?)?.toDouble(),
    tarjeta: json['tarjeta'] == null
        ? null
        : TarjetaCreditoEntity.fromJson(
            json['tarjeta'] as Map<String, dynamic>),
    entregaProgramada: json['entregaProgramada'] as bool?,
    fechaEntrega: json['fechaEntrega'] as String?,
    horarioEntrega: json['horarioEntrega'] as String?,
    entregaLatLong: json['entregaLatLong'] == null
        ? null
        : LatLongEntity.fromJson(
            json['entregaLatLong'] as Map<String, dynamic>),
    retiroLatLong: json['retiroLatLong'] == null
        ? null
        : LatLongEntity.fromJson(json['retiroLatLong'] as Map<String, dynamic>),
    distancia: (json['distancia'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$PedidoAnyEntityToJson(PedidoAnyEntity instance) =>
    <String, dynamic>{
      'descripcion': instance.descripcion,
      'pathImagen': instance.pathImagen,
      'entrega': instance.entrega?.toJson(),
      'retiro': instance.retiro?.toJson(),
      'medioPago': instance.medioPago,
      'pagoEfectivo': instance.pagoEfectivo,
      'tarjeta': instance.tarjeta?.toJson(),
      'entregaProgramada': instance.entregaProgramada,
      'fechaEntrega': instance.fechaEntrega,
      'horarioEntrega': instance.horarioEntrega,
      'entregaLatLong': instance.entregaLatLong?.toJson(),
      'retiroLatLong': instance.retiroLatLong?.toJson(),
      'distancia': instance.distancia,
    };
