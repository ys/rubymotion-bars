class BarListController < UITableViewController
  def init
    super
    @bars = []
    self
  end

  def viewDidLoad
    view.dataSource = view.delegate = self
  end

  def viewWillAppear(animated)
    navigationController.setNavigationBarHidden(true, animated:true)
    @location_manager ||= CLLocationManager.alloc.init.tap do |lm|
      lm.desiredAccuracy = KCLLocationAccuracyNearestTenMeters
      lm.startUpdatingLocation
      lm.delegate = self
    end
  end

  def tableView(tableView, numberOfRowsInSection:section)
    @bars.size
  end

  CELLID = 'CellIdentifier'
  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(CELLID) || begin
      cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:CELLID)
      cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton
      cell
    end
    if @bars.any?
      bar = @bars[indexPath.row]
      cell.textLabel.text = bar.name
    else
      cell.textLabel.text = "Loading..."
    end
    return cell
  end

  def tableView(tableView, accessoryButtonTappedForRowWithIndexPath:indexPath)
    bar = @bars[indexPath.row]
    controller = UIApplication.sharedApplication.delegate.bar_details_controller
    navigationController.pushViewController(controller, animated:true)
    controller.showDetailsForBar(bar)
  end

  def locationManager(manager, didUpdateToLocation:newLocation, fromLocation:oldLocation)
    @location_manager.stopUpdatingLocation
    # view with newLocation
    @bars = Bar.closest(newLocation.coordinate.latitude, newLocation.coordinate.longitude)
    view.reloadData
  end

  def locationManager(manager, didFailWithError:error)
  end
end
