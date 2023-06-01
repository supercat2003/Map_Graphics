
require([
    "esri/Map",
    "esri/views/MapView",
    "esri/layers/ImageryTileLayer",
    "esri/layers/TileLayer",
    "esri/layers/GroupLayer",
    "esri/rest/support/MultipartColorRamp",
    "esri/rest/support/AlgorithmicColorRamp",
    "esri/Color",
    "esri/widgets/Legend",
    "esri/widgets/Fullscreen",
    "esri/layers/MapImageLayer",
    "esri/widgets/LayerList",
    "esri/Graphic",
    "esri/layers/GraphicsLayer",
    "esri/layers/FeatureLayer",
    "esri/widgets/TimeSlider",
    "esri/widgets/Expand",
    "esri/widgets/Legend",
    "esri/layers/GraphicsLayer",
    "esri/Graphic",

], function (
    Map,
    MapView,
    ImageryTileLayer,
    TileLayer,
    GroupLayer,
    MultipartColorRamp,
    AlgorithmicColorRamp,
    Color,
    Legend,
    Fullscreen,
    MapImageLayer,
    LayerList,
    Graphic,
    GraphicsLayer,
    FeatureLayer
) {
    const sampleMap = new TileLayer({
        url: "https://tiles.arcgis.com/tiles/nGt4QxSblgDfeJn9/arcgis/rest/services/Spilhaus_Vibrant_Basemap/MapServer"
    });


    const referenceScale = 9244650;

    const renderer = {
        type: "simple",
        symbol: {
            type: "simple-marker",
            path: "M14.5,29 23.5,0 14.5,9 5.5,0z",
            color: [250, 250, 250],
            outline: {
                color: [255, 255, 255, 0.5],
                width: 0.5
            },
            angle: 180,
            size: 15
        },
        visualVariables: [
            {
                type: "rotation",
                field: "WIND_DIRECT",
                rotationType: "geographic"
            },
            {
                type: "size",
                field: "WIND_SPEED",
                minDataValue: 0,
                maxDataValue: 60,
                minSize: {
                    type: "size",
                    valueExpression: "$view.scale",
                    stops: [
                        { value: referenceScale, size: 8 },
                        { value: referenceScale * 2, size: 6 },
                        { value: referenceScale * 4, size: 4 },
                        { value: referenceScale * 8, size: 2 }
                    ]
                },
                maxSize: {
                    type: "size",
                    valueExpression: "$view.scale",
                    stops: [
                        { value: referenceScale, size: 40 },
                        { value: referenceScale * 2, size: 30 },
                        { value: referenceScale * 4, size: 20 },
                        { value: referenceScale * 8, size: 10 }
                    ]
                }
            },
            {
                type: "color",
                field: "TEMP",
                stops: [
                    { value: 20, color: "#1681c4" },
                    { value: 35, color: "#6ee05d" },
                    { value: 50, color: "#eaea66" },
                    { value: 65, color: "#dc720c" },
                    { value: 80, color: "#a41113" }
                ]
            }
        ]
    };

    // Set the renderer on the feature layer
    const windLayer = new FeatureLayer({
        portalItem: {
            id: "cb1886ff0a9d4156ba4d2fadd7e8a139"
        },
        title: "Погодные условия",
        renderer: renderer
    });


    const colorRamp = new MultipartColorRamp({
        colorRamps: [
            new AlgorithmicColorRamp({
                fromColor: new Color([20, 100, 150, 255]),
                toColor: new Color([70, 0, 150, 255])
            }),
            new AlgorithmicColorRamp({
                fromColor: new Color([70, 0, 150, 255]),
                toColor: new Color([170, 0, 120, 255])
            }),
            new AlgorithmicColorRamp({
                fromColor: new Color([170, 0, 120, 255]),
                toColor: new Color([230, 100, 60, 255])
            }),
            new AlgorithmicColorRamp({
                fromColor: new Color([230, 100, 60, 255]),
                toColor: new Color([255, 170, 0, 255])
            }),
            new AlgorithmicColorRamp({
                fromColor: new Color([255, 170, 0, 255]),
                toColor: new Color([255, 255, 0, 255])
            })
        ]
    });


    const temperatureLayer = new ImageryTileLayer({
        url: "https://tiledimageservices.arcgis.com/jIL9msH9OI208GCb/arcgis/rest/services/HyCOM_Surface_Temperature___Spilhaus/ImageServer",
        renderer: {
            colorRamp,
            stretchType: "min-max",
            type: "raster-stretch"
        },
        title: "Температуры",
        visible: false
    });


    const currentsLayer = new ImageryTileLayer({
        url: "https://tiledimageservices.arcgis.com/jIL9msH9OI208GCb/arcgis/rest/services/Spilhaus_UV_ocean_currents/ImageServer",
        renderer: {
            type: "flow", // использование FlowRenderer
            density: 1,
            maxPathLength: 1000, // максимальная длинна отрезка потока
            trailWidth: "2px"
        },
        title: "Течения",
        visible: false
    });



    //слой полигонов
    const graphicsLayer = new GraphicsLayer({
        title: "Районы",
        visible: false
    });

    //координаты точки
    const point1 = {
        type: "point",
        longitude: "-39.80500",
        latitude: "64.02000700"
    };

    //отметка точки
    const marker1 = {
        type: "simple-marker",
        color: [0,0,255,0.5],
        outline: {
            color: [0,0,255,0.5],
            width: 1
        }
    }


    //применяем точку к слою
    const pointGraphic1 = new Graphic({
        geometry: point1,
        symbol: marker1
    });


    graphicsLayer.add(pointGraphic1);


    //изобраажем линии
    const polyline1 = {
        type: "polyline",
        paths: [
            [-39.80500, 64.02000700],
            [-19.80510, 44.02000710],
            [-19.80500, 14.0200010000],
            [-37.910520, 54.02000720],
            [-39.80500, 64.0]

        ]
    };


    const simpleLineSymbol1 = {
        type: "simple-line",
        color: [0,0,255,0.5],
        width: 2
    };


    const polylineGraphic1 = new Graphic({
        geometry: polyline1,
        symbol: simpleLineSymbol1
    });


    graphicsLayer.add(polylineGraphic1);


    //заполняем полигон
    const fillPolyline1 = {
        type: "simple-fill",
        color: [0,0,255,0.5],
        outline: {
            color: [0,0,255,0.5],
            width: 1
        }
    };



    const polygonGraphic1 = new Graphic({
        geometry: polyline1,
        symbol: fillPolyline1,

    });



    graphicsLayer.add(polygonGraphic1);


    //координаты точки
    const point = {
        type: "point",
        longitude: "-48.09804675380047",
        latitude: "-43.60159877578402"
    };

    //отметка точки
    const marker = {
        type: "simple-marker",
        color: [255,0,128,0.5],
        outline: {
            color: [255,0,128,0.5],
            width: 1
        }
    }


    //применяем точку к слою
    const pointGraphic = new Graphic({
        geometry: point,
        symbol: marker
    });


    graphicsLayer.add(pointGraphic);


    //изобраажем линии
    const polyline = {
        type: "polyline",
        paths: [
            [-48.09804675380047,-43.60159877578402],
            [-65.89551323728541,17.921838724215984],
            [-63.80231216392174,19.679651224215966],
            [-51.289292580572045,26.35933872421598],
            [-48.09804675380047,-43.60159877578402]

        ]
    };


    const simpleLineSymbol = {
        type: "simple-line",
        color: [255,0,128,0.5],
        width: 2
    };


    const polylineGraphic = new Graphic({
        geometry: polyline,
        symbol: simpleLineSymbol
    });


    graphicsLayer.add(polylineGraphic);


    //заполняем полигон
    const fillPolyline = {
        type: "simple-fill",
        color: [255,0,128,0.5],
        outline: {
            color: [255,0,128,0.5],
            width: 1
        }
    };



    const polygonGraphic = new Graphic({
        geometry: polyline,
        symbol: fillPolyline,

    });



    graphicsLayer.add(polygonGraphic);

    const groupLayer = new GroupLayer({
        layers: [temperatureLayer, currentsLayer, graphicsLayer, windLayer],
        title: "Карта",
        visible: true,
        visibilityMode: "independent", //multiple
        opacity: 0.75
    });

    //создание карты и добавление группы слоёв
    const map = new Map({
        basemap: {
            baseLayers: [sampleMap]
        },
        layers: [groupLayer]
    });

    //await map.load();


    const view = new MapView({
        container: "viewDiv",
        map: map,
        scale: 20000000,
        center: [-19.80500, 14.0200010000],
    });

    //await view.when();


    // view.map.add(oceanLayer);
    // view.map.add(featureLayer);




    //event содержит характеристику объекта. каждый ListItem относится к своему слою карты
    async function defineActions(event) {
        const item = event.item;

        await item.layer.when();

        //поиск слоя по его названию
        if (item.title === "Температуры") {

            //применение к массиву объектов слоя свойств
            item.actionsSections = [
                [
                    {
                        title: "Увеличить прозрачность",
                        className: "esri-icon-up",
                        id: "increase-opacity"
                    },
                    {
                        title: "Уменьшить прозрачность",
                        className: "esri-icon-down",
                        id: "decrease-opacity"
                    }
                ]
            ];
        }
    }

    //меню со слоями LayerList
    view.when(() => {
        const layerList = new LayerList({
            view: view,
            listItemCreatedFunction: defineActions
        });

        //если действие произошло, то его фиксирует listener
        layerList.on("trigger-action", (event) => {

            // видимый слой, сохраняем его id
            const id = event.action.id;


            if (id === "increase-opacity") {
                if (groupLayer.opacity < 1) {
                    groupLayer.opacity += 0.25;
                }
            } else if (id === "decrease-opacity") {
                if (groupLayer.opacity > 0) {
                    groupLayer.opacity -= 0.25;
                }
            }
        });
        view.ui.add(layerList, "top-right");
    });


    // const legend = new Legend({
    //     view: view,
    //     fontSize: 30,
    //     layerInfos: [
    //         {
    //             layer: temperatureLayer,
    //             title: "Температуры водной поверхности"
    //         }
    //     ]
    // });
    // view.ui.add(legend, "top-right");


    const fullscreen = new Fullscreen({
        view: view
    });
    view.ui.add(fullscreen, "top-left");

    view.ui.add(
        new Legend({
            view: view
        }),
        "top-right"
    );
});