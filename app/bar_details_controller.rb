class BarDetailsController < UIViewController
  def loadView
    self.view = MKMapView.alloc.init
    view.delegate = self
  end

  def viewWillAppear(animated)
    navigationController.setNavigationBarHidden(false, animated:true)
  end

  def showDetailsForBar(bar)
    navigationItem.title = bar.name
    region = MKCoordinateRegionMake(CLLocationCoordinate2D.new(bar.lat, bar.lng), MKCoordinateSpanMake(0.001, 0.001))
    self.view.setRegion(region)
    self.view.addAnnotation(bar)
  end

  ViewIdentifier = 'ViewIdentifier'
  def mapView(mapView, viewForAnnotation:bar)
    if view = mapView.dequeueReusableAnnotationViewWithIdentifier(ViewIdentifier)
      view.annotation = bar
    else
      view = MKPinAnnotationView.alloc.initWithAnnotation(bar, reuseIdentifier:ViewIdentifier)
      view.canShowCallout = true
    view.animatesDrop = true
    end
    return view
  end
end
